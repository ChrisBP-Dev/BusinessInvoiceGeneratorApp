import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/double_extensions.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:business_invoice_generator_app/src/routing/routes/constants/route_constants.dart';
import 'package:business_invoice_generator_app/src/routing/routes/service/service_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    required this.service,
    this.width,
    this.onTap,
    super.key,
  });
  final ServiceModel service;
  final double? width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: _borderRadius(),
        child: ListTile(
          shape: _borderRadius(),
          title: Text(service.name),
          trailing: Text(service.price?.priceFormat ?? ''),
          onTap: onTap ??
              () {
                context.goNamed(
                  ServiceRoute.serviceDetails.name,
                  pathParameters: {
                    RouteConstants.serviceID: service.id,
                  },
                );
              },
        ),
      ),
    );
  }

  RoundedRectangleBorder _borderRadius() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Sizes.p8),
    );
  }
}
