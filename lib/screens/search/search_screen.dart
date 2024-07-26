import 'package:flutter/material.dart';

import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

import '../../base/widgets/app_double_text.dart';

// search screen

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            // header text
            'What are \nyou looking for?',
            style: AppStyle.headlineStyle1.copyWith(fontSize: 36),
          ),
          const SizedBox(
            height: 20,
          ),
          // tabs to display 'All Tickets' and 'Hotels'
          // re-using AppTicketTabs
          // pass thru 'firstTab' and 'secondTab' text
          const AppTicketTabs(
            firstTab: 'All Tickets',
            secondTab: 'Hotels',
          ),
          const SizedBox(
            height: 24,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_outlined,
            text: 'Departure',
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            icon: Icons.flight_land_outlined,
            text: 'Arrival',
          ),
          const SizedBox(
            height: 20,
          ),
          const FindTickets(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View All',
            // callback function >> routes to all tickets screen
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(
            height: 20,
          ),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
