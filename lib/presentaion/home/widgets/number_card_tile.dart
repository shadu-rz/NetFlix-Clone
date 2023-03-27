import 'package:flutter/material.dart';
import 'package:netflix_ui/core/sizedbox.dart';
import 'package:netflix_ui/presentaion/home/widgets/number_card.dart';
import 'package:netflix_ui/presentaion/widgets/main_title.dart';

class NumberCardTile extends StatelessWidget {
  const NumberCardTile({
    super.key,
    required this.posterList,
  });

  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height,
        const MainTitle(title: 'Top 10 Tv Shows In India Today'),
        height,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                posterList.length,
                (index) => NumberCard(
                      index: index,
                      imageurl: posterList[index],
                    )),
          ),
        )
      ],
    );
  }
}
