import 'package:dashboard_test/src/styles.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  CardTile({required this.icon, required this.count, required this.title});

  final IconData icon;
  final int count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.white,
            boxShadow: shadow()),
        height: 100,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 15,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              count.toString(),
              style: textStyle(
                  fontSize: 16,
                  color: Colors.grey[900] ?? Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Text(title,
                style: textStyle(
                    fontSize: 8,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold))
          ],
        ));
  }
}
