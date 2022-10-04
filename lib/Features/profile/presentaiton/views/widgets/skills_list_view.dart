import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/skills_item.dart';

class SkillsListView extends StatelessWidget {
  const SkillsListView({Key? key, required this.skills}) : super(key: key);

  final List<String> skills;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ListView.builder(
          itemCount: skills.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SkillsItem(
                text: skills[index],
              ),
            );
          }),
    );
  }
}
