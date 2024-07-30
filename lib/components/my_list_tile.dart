import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  final Color tileColor;


  const MyListTile({super.key, required this.text, required this.icon, this.onTap, required this.tileColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: ListTile(
          leading: Icon(icon,
          color: Colors.black,
          ),
        title: Text(text),
        onTap: onTap,

      ),
    );
  }
}
