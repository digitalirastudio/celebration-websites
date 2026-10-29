import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class DecorativeBackground extends StatelessWidget {
  final Widget child;
  final List<Color> colors;

  const DecorativeBackground({
    super.key,
    required this.child,
    this.colors = const [
      AppColors.background,
      AppColors.backgroundSoft,
      Colors.white,
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -45,
            right: -35,
            child: _decoration(
              size: 160,
              color: AppColors.flower.withValues(alpha: 0.25),
            ),
          ),
          Positioned(
            bottom: -55,
            left: -40,
            child: _decoration(
              size: 180,
              color: AppColors.accent.withValues(alpha: 0.18),
            ),
          ),
          Positioned.fill(child: child),
        ],
      ),
    );
  }

  Widget _decoration({required double size, required Color color}) {
    return IgnorePointer(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
