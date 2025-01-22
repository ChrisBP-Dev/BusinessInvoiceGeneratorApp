import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/admin_wrap_details.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/async_value_widget.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/controllers/business_controller.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/widgets/business_logo.dart';
import 'package:business_invoice_generator_app/src/routing/routes/business/business_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BusinessDetailsPage extends ConsumerWidget {
  const BusinessDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final businessState = ref.watch(businessControllerProvider);

    return AsyncValueWidget(
      value: businessState,
      data: (business) {
        if (business == null) {
          return const Center(child: Text('No business found'));
        }

        return AdminWrapDetails(
          withBackButton: false,
          title: 'Business Details',
          onEditTap: () => context.pushNamed(BusinessRoute.businessEdit.name),
          listWidget: ResponsiveCenter(
            padding: const EdgeInsets.all(Sizes.globalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BusinessLogo(imageUrl: business.companyLogo.url),
                gapH20,
                Text(business.companyName),
                Text(business.address),
                Text(business.formattedPhoneNumber),
                Text(business.email),
                if (business.website != null) Text(business.website!),
              ],
            ),
          ),
        );
      },
    );
  }
}
