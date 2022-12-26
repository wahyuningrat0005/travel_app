import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Text(
            "Liburan berdasarkan \nrekomendasi teman",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff0E3854),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          width: 350,
          padding: const EdgeInsets.symmetric(
            vertical: 6.0,
            horizontal: 20.0,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  initialValue: null,
                  decoration: InputDecoration.collapsed(
                    filled: true,
                    fillColor: Colors.transparent,
                    hintText: "Cari Lokasi Wisata",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                    hoverColor: Colors.transparent,
                  ),
                  onFieldSubmitted: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
