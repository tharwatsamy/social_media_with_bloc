import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/skills_item.dart';

class SkillsListView extends StatelessWidget {
  const SkillsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: SkillsItem(),
            );
          }),
    );
  }
}
