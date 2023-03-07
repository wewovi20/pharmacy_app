import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, this.color: Colors.white});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 5,
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
