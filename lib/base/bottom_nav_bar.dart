import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // declare a list of screens, iterated using index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Center(child: Text('profile')),
  ];

  // _selectedIndex variable for BottomNavBar
  // 0 is the default, onTap will change _selectedIndex
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // setState to allow the UI to update with _onItemTapped
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body/appScreens will change when _selectedIndex is selected
      body: appScreens[_selectedIndex],
      // using BottomNavigationBar to display appScreen options
      bottomNavigationBar: BottomNavigationBar(
        // currenctIndex, set to _selectedIndex will update the activeIcon
        currentIndex: _selectedIndex,
        // onTap calls the function _onItemTapped, then updates the index value
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blueGrey,
        showSelectedLabels: false,
        items: const [
          // BottomNavigationBar requires a list of items. Must be more than one item.
          BottomNavigationBarItem(
            // each BottomNavigationBarItem requires an icon and label widget
            // Usig Fluentui icons << imported package
            // icon is the default / activeIcon is when selected
            // each BottomNavigationBarItem has an index value
            label: 'home',
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_home_filled,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_search_filled,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'tickets',
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_ticket_filled,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'profile',
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_person_filled,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
