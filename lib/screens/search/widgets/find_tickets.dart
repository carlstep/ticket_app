import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

// text for the button

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyle.findTicketColor,
      ),
      child: Center(
        child: Text(
          'Find Tickets',
          style: AppStyle.textStyle.copyWith(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
