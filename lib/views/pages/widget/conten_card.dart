import 'package:flutter/material.dart';

import '../DetailPage/detail_page.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
    required this.images,
    required this.index,
    required this.contenTitle,
    required this.contenAddres,
  });

  final int index;
  final String images;
  final String contenTitle;
  final String contenAddres;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => DetailPage())));
          },
          child: Container(
            width: 141,
            margin: EdgeInsets.only(
              left: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: AssetImage(images), fit: BoxFit.cover)),
            child: Container(
              margin: EdgeInsets.only(left: 10.0, top: 166.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contenTitle,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    contenAddres,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
