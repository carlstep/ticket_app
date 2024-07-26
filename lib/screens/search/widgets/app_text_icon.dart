// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ticket_app/base/res/styles/app_styles.dart';

// display re-usable icon and text
class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppTextIcon({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppStyle.iconColor,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: AppStyle.textStyle,
          ),
        ],
      ),
    );
  }
}
