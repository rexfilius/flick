import 'package:flutter/material.dart';
import 'package:flick/library.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  static const List<Widget> _widgetOptions = [
    ScreenMovie(),
    ScreenExplore(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flick'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              // showSearch(
              //   context: context,
              //   delegate: MovieSearchDelegate(),
              // );
            },
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Cinema',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.saved_search),
            label: 'Explore',
          ),
        ],
      ),
    );
  }
}
