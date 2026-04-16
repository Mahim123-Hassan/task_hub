import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tmappbar extends StatelessWidget implements PreferredSizeWidget {
  const tmappbar({super.key});

  //final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        spacing: 12,
        children: [
          CircleAvatar(),

          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Mahim Hassan",
                style: textTheme.bodyLarge?.copyWith(color: Colors.white),
              ),
              Text(
                "hmahim951@gmail.com",
                style: textTheme.bodyMedium?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
