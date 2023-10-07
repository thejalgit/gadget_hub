import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingsTiledata extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;

  const settingsTiledata(
      {Key? key, required this.color, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
          child: const Icon(
            Icons.chevron_right_outlined,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),


      ],
    );
  }
}
