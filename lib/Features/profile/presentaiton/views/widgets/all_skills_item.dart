import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'multible_skills_list_view.dart';

class AllSkillsItem extends StatelessWidget {
  const AllSkillsItem({Key? key, required this.text, required this.skills})
      : super(key: key);

  final String text;
  final List<String> skills;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconTextWidget(
          text: text,
        ),
        const SizedBox(
          height: 16,
        ),
        MultibleSkillsListview(
          skills: skills,
        ),
      ],
    );
  }
}

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.note_add_outlined,
          color: Colors.grey.withOpacity(.6),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
