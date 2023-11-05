import 'package:flutter/material.dart';
import 'package:healthy_food_mobile_app/screens/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  navigateTo(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _bottomAppBarIcon({required int index, required String ImagePath}) {
    return IconButton(
      onPressed: () {
        navigateTo(index);
      },
      icon: Image.asset(
        ImagePath,
        color: _selectedIndex == index ? Colors.blue : Colors.grey[350],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[50],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _bottomAppBarIcon(
                  index: 0,
                  ImagePath: "lib/icons/homepage.png",
                ),
                _bottomAppBarIcon(
                  index: 1,
                  ImagePath: "lib/icons/menu (1).png",
                ),
                _bottomAppBarIcon(
                  index: 2,
                  ImagePath: "lib/icons/thunder.png",
                ),
                _bottomAppBarIcon(
                  index: 3,
                  ImagePath: "lib/icons/shopping-bag.png",
                ),
              ],
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const HomeScreen(),
          Container(
            child: const Center(
              child: Text("This is menu screen."),
            ),
          ),
          
          Container(
            child: const Center(
              child: Text("This is thunder screen."),
            ),
          ),
          Container(
            child: const Center(
              child: Text("This is shopping screen."),
            ),
          ),
          
        ],
      ),
    );
  }
}
