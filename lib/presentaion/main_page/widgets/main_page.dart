import 'package:flutter/material.dart';
import 'package:netflix_ui/presentaion/FastLaughs/fast_laughs.dart';
import 'package:netflix_ui/presentaion/Search/search.dart';
import 'package:netflix_ui/presentaion/downloads/downloads.dart';
import 'package:netflix_ui/presentaion/home/screen_home.dart';
import 'package:netflix_ui/presentaion/main_page/widgets/bottomnavigation.dart';
import 'package:netflix_ui/presentaion/new_and_hot/new_&_hot.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: navigationNotifier,
        builder: (context, index, child) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavi(),
    );
  }
}
