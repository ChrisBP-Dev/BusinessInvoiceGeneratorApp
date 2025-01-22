// import 'package:flutter/material.dart';
// import 'package:portfolio/src/core/common_components/footer/footer_component.dart';
// import 'package:portfolio/src/core/common_components/header/header_component.dart';
// import 'package:portfolio/src/core/common_widgets/initial_banner.dart';

// class WrapperScroll extends StatelessWidget {
//   const WrapperScroll({required this.components, super.key});

//   final List<Widget> components;

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       key: key,
//       slivers: [
//         const InitialBanner(),
//         const HeaderComponent(),
//         if (components.isNotEmpty)
//           SliverList.builder(
//             itemBuilder: (context, index) => components[index],
//             itemCount: components.length,
//           ),
//         if (components.isEmpty) const SliverFillRemaining(),
//         const FooterComponent(),
//       ],
//     );
//   }
// }
