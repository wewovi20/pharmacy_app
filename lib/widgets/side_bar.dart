import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pharmacy_app/utils/constants.dart';
import 'package:pharmacy_app/widgets/sidebaritem.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: MediaQuery.of(context).size.height / 1.6,
        width: MediaQuery.of(context).size.width / 7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: secondaryColor),
        child: Column(
          children: const [
            SideBarItem(
              icon: Icon(Icons.home),
              name: 'Home',
            ),
            SideBarItem(
              icon: Icon(Icons.point_of_sale),
              name: 'Point of sale',
            ),
            SideBarItem(
              icon: Icon(Icons.inventory),
              name: 'Inventory',
            ),
            SideBarItem(
              icon: Icon(Icons.person),
              name: 'Users',
            ),
          ],
        ),
      ),
    );
  }
}
