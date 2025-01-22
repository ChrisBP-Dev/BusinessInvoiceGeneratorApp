import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:flutter/material.dart';

class DashboardQuickAccessCard extends StatelessWidget {
  const DashboardQuickAccessCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
    required this.count,
    super.key,
  });

  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final String count;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isMobile = size.width < Breakpoint.tablet;

    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Sizes.p12),
        child: Container(
          width: isMobile ? (size.width / 2) - Sizes.p32 : 200,
          padding: const EdgeInsets.all(Sizes.p16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.p16),
              Icon(
                icon,
                size: 32,
                color: color,
              ),
              const SizedBox(height: Sizes.p8),
              Text(
                count,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: color,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
