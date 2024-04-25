import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int _currentPage = 0;

    void _switchPage(int page) {
      setState(() {
        _currentPage = page;
      });
    }

    return Scaffold(
      body: Center(child: Text('Image')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: _switchPage,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop_outlined),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.car_crash),
            label: '',
          ),
        ],
      ),
    );
  }
}
