import 'package:flutter/material.dart';
import 'package:leon/pages/create_page.dart';
import 'package:leon/pages/home_page.dart';
import 'package:leon/pages/notif_page.dart';
import 'package:leon/pages/profile_page.dart';
import 'package:leon/pages/search_page.dart';

import '../models/menu_model.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int selectedIndex = 0;
  Map<int, MenuModel> menu = {
    0: MenuModel(
      pages: HomePage(),
      icon: Icons.home,
      label: "Home",
      color: Colors.black,
    ),
    1: MenuModel(
      pages: NotifPage(),
      icon: Icons.notification_add,
      label: "Notif",
      color: Colors.black,
    ),
    2: MenuModel(
      pages: CreatePage(),
      icon: Icons.play_arrow,
      label: "Create",
      color: Colors.black,
    ),
    3: MenuModel(
      pages: SearchPage(),
      icon: Icons.search,
      label: "Search",
      color: Colors.black,
    ),
    4: MenuModel(
      pages: ProfilePage(),
      icon: Icons.person,
      label: "Profile",
      color: Colors.black,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leo', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        elevation: 10,
        onTap: (value) => setState(() {
          selectedIndex = value;
        }),
        items: menu.entries
            .map(
              (b) => BottomNavigationBarItem(
            icon: Icon(b.value.icon),
            activeIcon: Icon(b.value.icon),
            label: b.value.label,
            backgroundColor: b.value.color,
          ),
        )
            .toList(),
      ),
      body: menu[selectedIndex]!.pages,
    );
  }
}
