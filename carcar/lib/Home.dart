import 'package:flutter/material.dart';
import 'category/Map.dart';
import 'category/User.dart';
import 'category/Car.dart';
import 'category/HomePage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  final _page = [HomePage(), Map(), Car(), User()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_currentPage],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (page) {
          setState(() {
            _currentPage = page;
          });
        },
        selectedIndex: _currentPage,
        destinations: [
          NavigationDestination(
              icon: ImageIcon(AssetImage('images/Vectorhome.png')), label: ''),
          NavigationDestination(
              icon: ImageIcon(AssetImage('images/Group41.png')), label: ''),
          NavigationDestination(
              icon: ImageIcon(AssetImage('images/Rectangle247.png')),
              label: ''),
          NavigationDestination(
              icon: ImageIcon(AssetImage('images/Vectoruser.png')), label: '')
        ],
      ),
    );
  }
}
