import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

import '../../base/widgets/app_column_text_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Tickets',
            style: AppStyle.headlineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: 'Upcoming',
            secondTab: 'Previous',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketView(
              ticket: ticketList[0],
              isColor: true,
            ),
          ),
          SizedBox(
            height: 1,
          ),
          // bottom section of TicketView on TicketScreen
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: AppStyle.ticketWhite,
            child: const Column(
              children: [
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: 'Flutter DB',
                      bottomText: 'Passenger',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: '50344556',
                      bottomText: 'Passport',
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
