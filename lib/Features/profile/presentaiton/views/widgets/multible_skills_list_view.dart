import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/skills_item.dart';

class MultibleSkillsListview extends StatelessWidget {
  const MultibleSkillsListview({Key? key, required this.skills})
      : super(key: key);

  final List<String> skills;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 8,
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      children: skills
          .map(
            (e) => SizedBox(
              height: 34,
              child: SkillsItem(
                isActive: true,
                text: e,
              ),
            ),
          )
          .toList(),
    );
  }
}
