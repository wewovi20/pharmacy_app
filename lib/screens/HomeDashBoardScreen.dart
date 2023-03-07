import 'dart:html';

import 'package:flutter/material.dart';

import '../widgets/card.dart';
import '../widgets/header.dart';
import '../widgets/side_bar.dart';

class HomeDashBoardScreen extends StatefulWidget {
  const HomeDashBoardScreen({super.key});

  @override
  State<HomeDashBoardScreen> createState() => _HomeDashBoardScreenState();
}

class _HomeDashBoardScreenState extends State<HomeDashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Header(
            title: 'DashBoard',
            username: 'Admin',
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SideBar(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CardItem(
                        color: Colors.red,
                      ),
                      CardItem(),
                      CardItem(
                        color: Colors.green,
                      ),
                      CardItem(
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
