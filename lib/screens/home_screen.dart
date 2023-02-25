import 'package:flutter/material.dart';
import 'package:untitled/data/data.dart';
import 'package:untitled/main.dart';
import 'package:untitled/widget/custom_toolbar.dart';
import 'package:untitled/widget/my_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<HomeScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomeSilverAppBar(),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              final video = videos[index];
              return VideoCard(
                video: video,
              );
            },
            childCount: videos.length,
          ))
        ],
      ),
    );
  }
}
