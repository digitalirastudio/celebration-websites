import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool showDecoration;
  final TextAlign textAlign;

  const SectionTitle({
    super.key,
    required this.title,
    this.subtitle,
    this.showDecoration = true,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: textAlign == TextAlign.center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        if (showDecoration) ...[
          const Icon(Icons.favorite_rounded, color: AppColors.heart, size: 24),
          const SizedBox(height: 12),
        ],
        Text(title, textAlign: textAlign, style: AppTextStyles.sectionTitle),
        if (subtitle != null) ...[
          const SizedBox(height: 10),
          Text(subtitle!, textAlign: textAlign, style: AppTextStyles.body),
        ],
      ],
    );
  }
}
