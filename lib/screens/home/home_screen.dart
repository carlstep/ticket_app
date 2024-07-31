import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        // ListView to display the homescreen widgets
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            // TOP SECTION
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // HEADER Section
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning... ',
                            style: AppStyle.headlineStyle3),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Book Tickets',
                          style: AppStyle.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            // having the path referenced here is not good practice.
                            // (AppMedia.logo) gives a reference to media.dart
                            image: AssetImage(AppMedia.logo),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  // SEARCH BOX Section
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.blueGrey,
                      ),
                      Text('Search'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                // Existing Tickets Section
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View All',
                  // callback function >> routes to all tickets screen
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(
                  height: 20,
                ),
                // DISPLAY UPCOMING TICKETS SECTION
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.map((singleTicket) {
                      return TicketView(
                        ticket: singleTicket,
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                // DISPLAY HOTELS SECTION
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View All',
                  func: () {
                    Navigator.pushNamed(context, AppRoutes.allHotels);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList.map((singleHotel) {
                      return Hotel(
                        hotel: singleHotel,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
