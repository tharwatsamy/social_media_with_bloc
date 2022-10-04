import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/skills_list_view.dart';

import '../../../../../styles.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Ersad Basbag',
          style: Styles.body1,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          style: Styles.body6,
          TextSpan(
            children: [
              TextSpan(text: 'Istanbul  |  '),
              TextSpan(text: 'Turkey'),
              TextSpan(text: 'Ux Designer - '),
              TextSpan(text: 'Apple'),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Offering Ux design services in Istanbul',
          style: Styles.body6,
        ),
        SizedBox(
          height: 16,
        ),
        SkillsListView(),
      ],
    );
  }
}
