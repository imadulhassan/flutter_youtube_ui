import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:untitled/data/data.dart';
import 'package:untitled/screens/add_screen.dart';
import 'package:untitled/screens/home_screen.dart';
import 'package:untitled/screens/libary_screen.dart';
import 'package:untitled/screens/shorts_screen.dart';
import 'package:untitled/screens/subscription_scrren.dart';
import 'package:untitled/screens/video_screen.dart';
import 'package:untitled/widget/my_widgets.dart';

final selectedVideoProvider = StateProvider<Video?>((ref) => null);

final miniPlayerControllerProvider =
    StateProvider.autoDispose<MiniplayerController>(
  (ref) => MiniplayerController(),
);

class NavScreen extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _NavState();
  }
}

class _NavState extends State<NavScreen> {
  int selectedIndex = 0;
  double miniPlayerHieght = 60.0;
  final screenRoutes = [
    HomeScreen(),
    ShortsScreen(),
    AddScreen(),
    SubscriptionScreen(),
    LibraryScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, watch, child) {
          final selectedVideo = watch(selectedVideoProvider).state;
          final miniPlayerController =
              watch(miniPlayerControllerProvider).state;
          print(selectedVideo);
          return Stack(
            children: screenRoutes
                .asMap()
                .map((i, screen) => MapEntry(
                      i,
                      Offstage(
                        offstage: selectedIndex != i,
                        child: screen,
                      ),
                    ))
                .values
                .toList()
              ..add(
                Offstage(
                  offstage: selectedVideo == null,
                  child: Miniplayer(
                    controller: miniPlayerController,
                    minHeight: miniPlayerHieght,
                    maxHeight: MediaQuery.of(context).size.height,
                    builder: (height, percentage) {
                      if (selectedVideo == null) return const SizedBox.shrink();

                      if (height <= miniPlayerHieght + 50.0)
                        return Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    selectedVideo.thumbnailUrl,
                                    height: miniPlayerHieght - 4.0,
                                    width: 120.0,
                                    fit: BoxFit.cover,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              selectedVideo.title,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Text(
                                              selectedVideo.author.username,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.play_arrow),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.close),
                                    onPressed: () {
                                      context
                                          .read(selectedVideoProvider)
                                          .state = null;
                                    },
                                  ),
                                ],
                              ),
                              const LinearProgressIndicator(
                                value: 0.4,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.red,
                                ),
                              ),
                            ],
                          ),
                        );
                      return VideoScreen();
                    },
                  ),
                ),
              ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        currentIndex: selectedIndex,
        onTap: (i) => setState(() {
          selectedIndex = i;
        }),
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              tooltip: 'Home Screen',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.tiktok_outlined),
              label: 'Shorts',
              tooltip: 'Shorts',
              activeIcon: Icon(Icons.tiktok)),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              tooltip: 'Add',
              label: 'Create',
              activeIcon: Icon(Icons.add_circle)),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              tooltip: 'Subscriptions',
              label: 'Subscriptions',
              activeIcon: Icon(Icons.subscriptions)),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              tooltip: 'Library',
              label: 'Library',
              activeIcon: Icon(Icons.video_library))
        ],
      ),
    );
  }
}
