import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  const SideBarItem({super.key, required this.icon, required this.name});
  final Widget icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: icon,
            ),
            Text(
              name,
            )
          ],
        ),
      ),
    );
  }
}
