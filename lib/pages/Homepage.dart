import 'package:flutter/material.dart';
import 'package:intern_dash/pages/Dash_Page.dart';
import 'package:intern_dash/pages/announcements.dart';
import 'package:intern_dash/pages/leaderboard.dart';
import 'package:intern_dash/authentication/sign up.dart';
class Homepage extends StatefulWidget {
  final String Name;
  const Homepage({super.key ,required this.Name});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
    int selected_index = 0;
    late final List<Widget> pages;


    @override
    void initState() {
      super.initState();
      pages = [
        DashPage(Name: widget.Name),
        leaderboard(),
        announcements(),
      ];
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Intern Portal',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon(Icons.logout, color: Colors.white),
                tooltip: 'Logout',
                onPressed: () {},
              ),
            ),
          ],
        ),
          backgroundColor: Colors.black,

      body:
      pages[selected_index],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: selected_index,
      onTap: (index) => setState(() {
      selected_index = index;}),
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.dashboard ,color: Colors.black,), label: 'Dashboard'),
      BottomNavigationBarItem(icon: Icon(Icons.leaderboard ,color: Colors.black,), label: 'Leaderboard'),
      BottomNavigationBarItem(icon: Icon(Icons.announcement ,color: Colors.black,), label: 'Announcements'),
      ],
      ),



      );


      }
  }

