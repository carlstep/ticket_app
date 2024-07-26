import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/screens/all_tickets.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import 'base/utils/app_routes.dart';

void main() {
  // main() is the entry point to the flutter framework
  // runApp must accept a Widget
  // Widgets can be Stateless or Stateful

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // material app
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),

      routes: {
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        // AppRoutes.allHotels: (context) => const AllHotels(),
        // AppRoutes.hotelDetail: (context) => const HotelDetail()
      },
    );
  }
}
