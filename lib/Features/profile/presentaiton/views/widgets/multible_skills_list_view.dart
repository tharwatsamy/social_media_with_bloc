

import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/skills_item.dart';
class MultibleSkillsListview extends StatelessWidget {
  const MultibleSkillsListview({Key? key}) : super(key: key);

  final data = const [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      children: data
          .map(
            (e) => const SizedBox(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                child: SkillsItem(),
              ),
            ),
          )
          .toList(),
    );
  }
}
