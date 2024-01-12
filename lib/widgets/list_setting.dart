import 'package:flutter/material.dart';

class ListSetting extends StatelessWidget {
  const ListSetting({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle = "",
    this.color = Colors.black,
    this.onPressed,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          height: 72,
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: color,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(title, style: TextStyle(color: color)),
                Spacer(),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.black38, fontSize: 14),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: color,
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 0,
        ),
      ],
    );
  }
}
