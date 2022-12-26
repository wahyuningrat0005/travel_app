import 'package:flutter/material.dart';

class CategoryWisata extends StatelessWidget {
  const CategoryWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Kategori",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Color(0xff0E3854),
            ),
          ),
          Text(
            "Lihat Semua",
            style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff0E3854)),
          ),
        ],
      ),
    );
  }
}
