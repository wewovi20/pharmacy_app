import 'package:flutter/material.dart';
import 'package:pharmacy_app/widgets/side_menu/side_menu_item.dart';
import 'package:provider/provider.dart';

import '../navbar/navbar_logo.dart';

class SideMenuTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.indigo,
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.indigo.shade600],
          ),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, offset: const Offset(3, 5), blurRadius: 17)
          ]),
      width: 250,
      child: Container(
        child: Column(
          children: [
            NavBarLogo(),
            SideMenuItemDesktop(
              onTap: () {},
              active: true,
              icon: Icons.dashboard,
              text: 'Dashboard',
            ),
            SideMenuItemDesktop(
              onTap: () {},
              active: false,
              icon: Icons.people,
              text: 'Users',
            ),
            SideMenuItemDesktop(
              onTap: () {},
              active: false,
              icon: Icons.shopping_cart,
              text: 'Orders',
            ),
            SideMenuItemDesktop(
              onTap: () {},
              active: false,
              icon: Icons.shopping_basket_outlined,
              text: 'Products',
            ),
            SideMenuItemDesktop(
              onTap: () {},
              active: false,
              icon: Icons.category,
              text: 'Categories',
            ),
            SideMenuItemDesktop(
              onTap: () {},
              active: false,
              icon: Icons.category,
              text: 'Brands',
            ),
          ],
        ),
      ),
    );
  }
}
