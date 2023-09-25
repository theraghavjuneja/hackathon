import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/imagebox.dart';
import 'package:flutter/material.dart';

import 'bottomnavbar.dart';

class SlidingImageRow extends StatefulWidget {
  @override
  _SlidingImageRowState createState() => _SlidingImageRowState();
}

class _SlidingImageRowState extends State<SlidingImageRow> {
  final List<String> imagePaths = [
    'images/new1.png',
    'images/new2.png',
    'images/new3.png',
    'images/new4.png',
    'images/new5.png'
  ];


  final List<String> imageTexts = [
    'Men\'s Fashion',
    'Bags',
    'Women\'s Fashion',
    'Shoes',
    'Electronics',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            const Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'New Arrivals',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {

              },
              child: const Text(
                'View All',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    ImageSquareCircular(imagePath: imagePaths[index], size: 100),
                    const SizedBox(height: 8),
                    Text(
                      imageTexts[index],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
class SlidingImageRow2 extends StatefulWidget {
  @override
  _SlidingImageRowState2 createState() => _SlidingImageRowState2();
}

class _SlidingImageRowState2 extends State<SlidingImageRow2> {
  final List<String> imagePaths = [
    'images/footwear.png',
    'images/beautyandmakeup.png',
    'images/personal_care.jpeg',
    'images/mengrooming.jpeg',
    'images/healthcare.jpg'
  ];

  // Sample text for reference
  final List<String> imageTexts = [
    'Footwear',
    'Beauty and makeup',
    'Personal Care',
    'Men\'s Grooming',
    'HealthCare',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            const Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Bestselling Products',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {

              },
              child: const Text(
                'View All',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    ImageSquareCircular(imagePath: imagePaths[index], size: 100),
                    const SizedBox(height: 8),
                    Text(
                      imageTexts[index],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}


class ConsumerPage extends StatefulWidget {
  const ConsumerPage({Key? key}) : super(key: key);

  @override
  State<ConsumerPage> createState() => _ConsumerPageState();
}

class _ConsumerPageState extends State<ConsumerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFEDF6FF),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              floating: false,
              pinned: true,
              expandedHeight: 80,
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: SearchAnchor(
                              builder: (BuildContext context, SearchController controller) {
                                return SearchBar(
                                  hintText: 'Search ShopLocal',
                                  controller: controller,
                                  onTap: () {
                                    controller.openView();
                                  },
                                  onChanged: (_) {
                                    controller.openView();
                                  },
                                  leading: const Icon(Icons.search),
                                  trailing: const <Widget>[
                                    Tooltip(
                                      message: 'Voice Search',
                                      child: Icon(Icons.mic),
                                    )
                                  ],
                                );
                              },
                              suggestionsBuilder: (BuildContext context, SearchController controller) {
                                return List<ListTile>.generate(5, (int index) {
                                  final String item = 'item $index';
                                  return ListTile(
                                    title: Text(item),
                                    onTap: () {
                                      setState(() {
                                        controller.closeView(item);
                                      });
                                    },
                                  );
                                });
                              },
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.filter_list),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  ImageSlideshow(
                    width: double.infinity,
                    height: 350,
                    initialPage: 0,
                    indicatorColor: Colors.black,
                    indicatorBackgroundColor: Colors.white,
                    autoPlayInterval: 3000,
                    isLoop: true,
                    children: [
                      Image.asset(
                        'images/SALE_1.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'images/SALE_2.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'images/SALE_3.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'images/SALE4.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'images/SALE5.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  SlidingImageRow(),
                  SlidingImageRow2(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
