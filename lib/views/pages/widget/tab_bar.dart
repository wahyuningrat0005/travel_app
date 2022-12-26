import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required this.index,
    required this.text,
    required this.images,
  });
  final int index;
  final String text;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: index == 0 ? Color(0xff0E3854) : Color(0xff0E3854),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(8),
          right: Radius.circular(8),
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: index == 0 ? 21 : 14.0),
          child: Row(
            children: [
              Text(
                text,
                style:
                    TextStyle(color: index == 0 ? Colors.white : Colors.black),
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset(images),
            ],
          ),
        ),
      ),
    );
  }
}
