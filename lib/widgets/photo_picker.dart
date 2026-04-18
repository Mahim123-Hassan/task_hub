
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class photo_picker extends StatelessWidget {
  const photo_picker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 8,
        children: [
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  topLeft: Radius.circular(8)
              ),


            ),
            alignment: Alignment.center,
            child: Text("Photo"),

          ),
          Expanded(child: Text("Select Photo"))

        ],
      ),);
  }
}