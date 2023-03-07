import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_text.dart';

class NavigationTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.grey, offset: Offset(3, 5), blurRadius: 17)
      ]),
      height: 50,
      child: Row(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              Stack(
                children: [
                  ElevatedButton.icon(
                    icon: Icon(Icons.notifications),
                    label: CustomText(
                      size: 15,
                      color: Colors.blue,
                      weight: FontWeight.bold,
                      text: 'Notifications',
                    ),
                    onPressed: () {},
                  ),
                  Positioned(
                    top: 4,
                    left: 9,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.settings),
                label: CustomText(
                  color: Colors.blue,
                  weight: FontWeight.bold,
                  size: 15,
                  text: 'Settings',
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    size: 15,
                    color: Colors.blue,
                    weight: FontWeight.bold,
                    text: 'Santos Enoque',
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {
                      print("CLICKED");
                      myPopMenu();
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget myPopMenu() {
    return PopupMenuButton(
        onSelected: (value) {},
        itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                        child: Icon(Icons.print),
                      ),
                      Text('Print')
                    ],
                  )),
              PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                        child: Icon(Icons.share),
                      ),
                      Text('Share')
                    ],
                  )),
              PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                        child: Icon(Icons.add_circle),
                      ),
                      Text('Add')
                    ],
                  )),
            ]);
  }
}
