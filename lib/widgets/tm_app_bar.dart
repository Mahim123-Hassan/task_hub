import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/update_profile_screen.dart';

class tmappbar extends StatelessWidget implements PreferredSizeWidget {
  const tmappbar({super.key, this.fromUpdateProfile=false});
  final bool fromUpdateProfile;

  //final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: Colors.green,
      title: GestureDetector(
        onTap: (){
          if(fromUpdateProfile){
            return;
          }
          Navigator.pushNamed(context, UpdateProfileScreen.name);
        },
        child: Row(
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
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
