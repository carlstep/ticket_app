// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ticket_app/base/res/styles/app_styles.dart';

// display tabs - firstTab / secondTab are passed to parent

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const AppTicketTabs({
    super.key,
    required this.firstTab,
    required this.secondTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          AppTabs(
            tabText: firstTab,
          ),
          // AppTabs controls the look when onTap
          AppTabs(
            tabText: secondTab,
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({
    super.key,
    this.tabText = '',
    this.tabBorder = false,
    this.tabColor = false,
  });

  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
        color: tabColor == false ? Colors.white : Colors.transparent,
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      child: Center(
        child: Text(
          tabText,
          style: AppStyle.headlineStyle3,
        ),
      ),
    );
  }
}
