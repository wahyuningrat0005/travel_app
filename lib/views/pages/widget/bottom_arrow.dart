import 'dart:ui';

import 'package:flutter/material.dart';

class BottomArrowWidget extends StatelessWidget {
  const BottomArrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {},
        child: Container(
          clipBehavior: Clip.none,
          height: 20.0,
          width: 20.0,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
