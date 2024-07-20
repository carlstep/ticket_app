import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        // ListView to display the homescreen widgets
        //
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            // header section
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [
                Row(
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
                          color: Colors.amber,
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
                const AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View All',
                ),
                const SizedBox(
                  height: 20,
                ),
                const TicketView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
