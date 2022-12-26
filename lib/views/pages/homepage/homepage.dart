import 'package:flutter/material.dart';
import 'package:travel_app/views/config/content_conts.dart';
import 'package:travel_app/views/pages/widget/appbar.dart';
import 'package:travel_app/views/pages/widget/bottom_bar.dart';
import 'package:travel_app/views/pages/widget/category_wisata.dart';
import 'package:travel_app/views/pages/widget/conten_card.dart';
import 'package:travel_app/views/pages/widget/search_input.dart';
import 'package:travel_app/views/pages/widget/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
        
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, kToolbarHeight),
        child: AppBarWidget(),
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical, 
        slivers: [
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchInput(),
                const SizedBox(
                  height: 24,
                ),
                CategoryWisata(),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 34,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ContentConst.tabBarTitle.length,
                      itemBuilder: ((context, index) {
                        return TabBarWidget(
                          index: index,
                          text: ContentConst.tabBarTitle[index],
                          images: ContentConst.contentIcon[index],
                        );
                      })),
                ),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                  height: 16,
                  child: Text(
                    "Populer",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 206,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ContentConst.contentImage.length,
                      itemBuilder: ((context, index) {
                        return ContentCard(
                          index: index,
                          contenTitle: ContentConst.contentTitle[index],
                          contenAddres: ContentConst.contentAddres[index],
                          images: ContentConst.contentImage[index],
                        );
                      })),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Wisata Disekitarmu",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0E3854)),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 34,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ContentConst.tabRecomend.length,
                      itemBuilder: ((context, index) {
                        return TabBarWidget(
                          index: index,
                          text: ContentConst.tabRecomend[index],
                          images: ContentConst.contentIcon[index],
                        );
                      })),
                ),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                  height: 16,
                  child: Text(
                    "Menarik Untuk DiKunjungi",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0E3854)),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 206,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ContentConst.contentImage.length,
                      itemBuilder: ((context, index) {
                        return ContentCard(
                          index: index,
                          contenTitle: ContentConst.contentTitle[index],
                          contenAddres: ContentConst.contentAddres[index],
                          images: ContentConst.contentImage[index],
                        );
                      })),
                ),
              ],
            ),
          ),
        ),
      ],
      ),
    );
  }
}
