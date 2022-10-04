import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'multible_skills_list_view.dart';

class AllSkillsItem extends StatelessWidget {
  const AllSkillsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        IconTextWidget(),
        SizedBox(
          height: 16,
        ),
        MultibleSkillsListview(),
      ],
    );
  }
}

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.calendar,
          color: Colors.grey.withOpacity(.6),
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          'Main Skills',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
