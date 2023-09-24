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
    'images/image1.jpeg',
    'images/image2.jpeg',
    'images/image3.jpeg',
    'images/image4.jpeg',
    'images/mage5.jpeg'
  ];


  final List<String> imageTexts = [
    'Text 1',
    'Text 2',
    'Text 3',
    'Text 4',
    'Text 5',
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
                // yhan view all krne ka code aajaayegaaaa
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
          height: 160, // Adjust the height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 8, right: 8), // Add spacing between images
                child: Column(
                  children: [
                    ImageSquareCircular(imagePath: imagePaths[index], size: 100),
                    SizedBox(height: 8), // Add spacing between image and text
                    Text(
                      imageTexts[index], // Display the corresponding text
                      style: TextStyle(
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
    'images/image1.jpeg',
    'images/image2.jpeg',
    'images/image3.jpeg',
    'images/image4.jpeg',
    'images/mage5.jpeg'
  ];

  // Sample text for reference
  final List<String> imageTexts = [
    'Text 1',
    'Text 2',
    'Text 3',
    'Text 4',
    'Text 5',
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
                // yhan view all krne ka code aajaayegaaaa
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
          height: 160, // Adjust the height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 8, right: 8), // Add spacing between images
                child: Column(
                  children: [
                    ImageSquareCircular(imagePath: imagePaths[index], size: 100),
                    SizedBox(height: 8), // Add spacing between image and text
                    Text(
                      imageTexts[index], // Display the corresponding text
                      style: TextStyle(
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
              backgroundColor: Colors.transparent, // Make the app bar transparent
              floating: false, // The app bar won't float
              pinned: true, // The app bar will stay pinned at the top
              expandedHeight: 80, // Adjust this height as needed
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 10.0), // Add spacing here
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
                                icon: Icon(Icons.filter_list), // Add filter icon
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
