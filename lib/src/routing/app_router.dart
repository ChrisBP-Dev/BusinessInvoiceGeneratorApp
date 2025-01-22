import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/full_page_container.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/routing/go_router_refresh_stream.dart';
import 'package:business_invoice_generator_app/src/routing/not_found_page.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:business_invoice_generator_app/src/routing/routes/auth/auth_route.dart';
import 'package:business_invoice_generator_app/src/routing/routes/business/business_route.dart';
import 'package:business_invoice_generator_app/src/routing/routes/core/route_helper.dart';
import 'package:business_invoice_generator_app/src/routing/routes/customer/customer_route.dart';
import 'package:business_invoice_generator_app/src/routing/routes/invoice/invoice_route.dart';
import 'package:business_invoice_generator_app/src/routing/routes/service/service_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final businessState = ref.watch(businessControllerProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AuthRoute.signIn.path,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final path = state.uri.path;
      final isLoggedIn = authRepository.currentAppUser != null;
      final isAuthRoute = path.startsWith(AuthRoute.signIn.path) ||
          path.startsWith(AuthRoute.signUp.path) ||
          path.startsWith(AuthRoute.createBusiness.path);

      // User not logged in can only access auth routes
      if (!isLoggedIn) {
        return isAuthRoute ? null : AuthRoute.signIn.path;
      }

      // If business state is loading, wait
      if (businessState.isLoading) return null;

      // If there is an error or no business, redirect to create business
      if (businessState.hasError || businessState.value == null) {
        return AuthRoute.createBusiness.path;
      }

      // User logged in with business should not be in auth routes
      if (isAuthRoute) {
        return AdminAppRoute.dashboard.path;
      }

      return null;
    },
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [
      // Auth routes
      RouteHelper.createRoute(
        path: AuthRoute.signIn.path,
        name: AuthRoute.signIn.name,
        page: AuthRoute.signIn.page,
      ),
      RouteHelper.createRoute(
        path: AuthRoute.createBusiness.path,
        name: AuthRoute.createBusiness.name,
        page: AuthRoute.createBusiness.page,
      ),
      RouteHelper.createRoute(
        path: AuthRoute.signUp.path,
        name: AuthRoute.signUp.name,
        page: AuthRoute.signUp.page,
      ),

      // Main shell route with the admin container
      RouteHelper.createShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (child) => FullPageContainer(page: child),
        routes: [
          // Main admin routes
          for (final route in AdminAppRoute.shellRoutes)
            RouteHelper.createRoute(
              path: route.path,
              name: route.name,
              page: route.page,
              routes: [
                // If it is the business route, add the edit route
                if (route == AdminAppRoute.business)
                  RouteHelper.createRoute(
                    path: BusinessRoute.businessEdit.path,
                    name: BusinessRoute.businessEdit.name,
                    page: BusinessRoute.businessEdit.page,
                  ),

                // If it is the customers route, add its subroutes
                if (route == AdminAppRoute.customers) ...[
                  // Create customer
                  RouteHelper.createRoute(
                    path: CustomerRoute.customerCreate.path,
                    name: CustomerRoute.customerCreate.name,
                    page: CustomerRoute.customerCreate.page,
                  ),
                  // Customer details
                  RouteHelper.createRoute(
                    path: CustomerRoute.customerDetails.path,
                    name: CustomerRoute.customerDetails.name,
                    page: CustomerRoute.customerDetails.page,
                    routes: [
                      // Edit customer
                      RouteHelper.createRoute(
                        path: CustomerRoute.customerEdit.path,
                        name: CustomerRoute.customerEdit.name,
                        page: CustomerRoute.customerEdit.page,
                      ),
                    ],
                  ),
                ],

                // If it is the services route, add its subroutes
                if (route == AdminAppRoute.services) ...[
                  // Create service
                  RouteHelper.createRoute(
                    path: ServiceRoute.serviceCreate.path,
                    name: ServiceRoute.serviceCreate.name,
                    page: ServiceRoute.serviceCreate.page,
                  ),
                  // Service details
                  RouteHelper.createRoute(
                    path: ServiceRoute.serviceDetails.path,
                    name: ServiceRoute.serviceDetails.name,
                    page: ServiceRoute.serviceDetails.page,
                    routes: [
                      // Edit service
                      RouteHelper.createRoute(
                        path: ServiceRoute.serviceEdit.path,
                        name: ServiceRoute.serviceEdit.name,
                        page: ServiceRoute.serviceEdit.page,
                      ),
                    ],
                  ),
                ],

                // If it is the invoices route, add its subroutes
                if (route == AdminAppRoute.invoices) ...[
                  // Create invoice from customer details
                  RouteHelper.createRoute(
                    path: InvoiceRoute.invoiceCreateFromCustomerDetail.path,
                    name: InvoiceRoute.invoiceCreateFromCustomerDetail.name,
                    page: InvoiceRoute.invoiceCreateFromCustomerDetail.page,
                  ),
                  // Edit invoice from customer details
                  RouteHelper.createRoute(
                    path: InvoiceRoute.invoiceEditFromCustomerDetail.path,
                    name: InvoiceRoute.invoiceEditFromCustomerDetail.name,
                    page: InvoiceRoute.invoiceEditFromCustomerDetail.page,
                  ),
                  // Create invoice
                  RouteHelper.createRoute(
                    path: InvoiceRoute.invoiceCreate.path,
                    name: InvoiceRoute.invoiceCreate.name,
                    page: InvoiceRoute.invoiceCreate.page,
                  ),
                  // Subroutes of item creation
                  RouteHelper.createRoute(
                    path: InvoiceRoute.createItem.path,
                    name: InvoiceRoute.createItem.name,
                    page: InvoiceRoute.createItem.page,
                  ),
                  RouteHelper.createRoute(
                    path: InvoiceRoute.editItem.path,
                    name: InvoiceRoute.editItem.name,
                    page: InvoiceRoute.editItem.page,
                  ),
                  // Subroutes of selection
                  RouteHelper.createRoute(
                    path: InvoiceRoute.selectCustomer.path,
                    name: InvoiceRoute.selectCustomer.name,
                    page: InvoiceRoute.selectCustomer.page,
                  ),
                  RouteHelper.createRoute(
                    path: InvoiceRoute.selectService.path,
                    name: InvoiceRoute.selectService.name,
                    page: InvoiceRoute.selectService.page,
                  ),
                  // Edit invoice
                  RouteHelper.createRoute(
                    path: InvoiceRoute.invoiceEdit.path,
                    name: InvoiceRoute.invoiceEdit.name,
                    page: InvoiceRoute.invoiceEdit.page,
                  ),
                  // Invoice details
                  RouteHelper.createRoute(
                    path: InvoiceRoute.invoiceDetails.path,
                    name: InvoiceRoute.invoiceDetails.name,
                    page: InvoiceRoute.invoiceDetails.page,
                  ),
                ],
              ],
            ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );
}
