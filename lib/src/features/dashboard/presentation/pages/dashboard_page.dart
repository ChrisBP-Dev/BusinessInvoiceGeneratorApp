import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/wrapper_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/double_extensions.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:business_invoice_generator_app/src/features/dashboard/presentation/controllers/dashboard_controller.dart';
import 'package:business_invoice_generator_app/src/features/dashboard/presentation/widgets/dashboard_quick_access_card.dart';
import 'package:business_invoice_generator_app/src/routing/routes/admin/admin_app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardStatsStream = ref.watch(dashboardControllerProvider);

    return Scaffold(
      body: WrapperList(
        appBarWidget: const CustomAppbar(
          title: 'Dashboard',
          withBackButton: false,
        ),
        listWidget: ResponsiveCenter(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.globalPadding,
          ),
          child: dashboardStatsStream.when(
            data: (stats) => Wrap(
              alignment: WrapAlignment.center,
              spacing: Sizes.p16,
              runSpacing: Sizes.p16,
              children: [
                DashboardQuickAccessCard(
                  title: 'Business',
                  icon: Icons.business,
                  color: context.theme.colorScheme.primary,
                  count: '1',
                  onTap: () => context.goNamed(AdminAppRoute.business.name),
                ),
                DashboardQuickAccessCard(
                  title: 'Customers',
                  icon: Icons.people,
                  color: const Color.fromARGB(255, 56, 141, 146),
                  count: '${stats.totalCustomers}',
                  onTap: () => context.goNamed(AdminAppRoute.customers.name),
                ),
                DashboardQuickAccessCard(
                  title: 'Services',
                  icon: Icons.build,
                  color: const Color.fromARGB(255, 102, 178, 97),
                  count: '${stats.totalServices}',
                  onTap: () => context.goNamed(AdminAppRoute.services.name),
                ),
                DashboardQuickAccessCard(
                  title: 'Invoices',
                  icon: Icons.receipt,
                  color: const Color.fromARGB(255, 219, 117, 133),
                  count: '${stats.totalInvoices}',
                  onTap: () => context.goNamed(AdminAppRoute.invoices.name),
                ),
                DashboardQuickAccessCard(
                  title: 'Total Amount',
                  icon: Icons.attach_money,
                  color: const Color.fromARGB(255, 68, 127, 164),
                  count: stats.totalAmount.priceFormat,
                  onTap: () => context.goNamed(AdminAppRoute.invoices.name),
                ),
              ],
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stack) => Center(
              child: Text('Error: $error'),
            ),
          ),
        ),
      ),
    );
  }
}
