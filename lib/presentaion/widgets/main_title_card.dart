import 'package:flutter/material.dart';
import 'package:netflix_ui/core/sizedbox.dart';
import 'package:netflix_ui/presentaion/widgets/main_card.dart';
import 'package:netflix_ui/presentaion/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const  MainTitleCard({
    super.key,
    required this.title,
    required this.posterList,
  });

  final String title;
  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height,
        MainTitle(title: title),
        height,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                posterList.length,
                (index) => MainCard0(
                      imageurl: posterList[index],
                    )),
          ),
        )
      ],
    );
  }
}
