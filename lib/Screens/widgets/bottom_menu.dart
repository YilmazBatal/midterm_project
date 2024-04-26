import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  // ignore: unused_field
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });

      switch (index) {
        case 0:
          GoRouter.of(context).push("/home");
          break;
        case 1:
          GoRouter.of(context).push("/cart");
          break;
        case 2:
          GoRouter.of(context).push("/previousorders");
          break;
        case 3:
          GoRouter.of(context).push("/favorites");
          break;
        default:
      }
    }

    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt_long_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: ""),
      ],
      onTap: onItemTapped,
    );
  }
}
