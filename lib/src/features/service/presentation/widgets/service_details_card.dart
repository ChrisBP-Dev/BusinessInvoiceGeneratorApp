import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/extensions/double_extensions.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:flutter/material.dart';

class ServiceDetailsCard extends StatelessWidget {
  const ServiceDetailsCard({required this.service, super.key});

  final ServiceModel service;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.globalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _RowAligned(
              fieldName: 'Service Name:',
              fieldValue: service.name,
            ),
            _RowAligned(
              fieldName: 'Service Price:',
              fieldValue: service.price?.priceFormat ?? 0.0.priceFormat,
            ),
          ],
        ),
      ),
    );
  }
}

class _RowAligned extends StatelessWidget {
  const _RowAligned({
    required this.fieldName,
    required this.fieldValue,
  });

  final String fieldName;
  final String fieldValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            fieldName,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            fieldValue,
            style: context.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
