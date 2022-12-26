import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 18, top: 24),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Image.asset("assets/images/location.png"),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Indonesia,Yogyakarta",
              style: TextStyle(
                  color: Color(0xff0E3854),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ],
        ),
        leading: Padding(
          padding: EdgeInsets.only(
            right: 24,
          ),
          child: Image.asset(
            "assets/images/Vector.png",
            width: 16,
            height: 16,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/image.jpg"),
          )
        ],
        centerTitle: true,
      ),
    );
  }
}
