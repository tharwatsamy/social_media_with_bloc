import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_actions_button.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/skills_list_view.dart';
import 'package:social_media_ui/styles.dart';

import 'connections_info.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 55,
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: Column(
                children: const [
                  ConnectionsInfo(),
                  SizedBox(
                    height: 20,
                  ),
                  ProfileInfoActionButtons(),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const UserDetails(),
      ],
    );
  }
}

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
          height: 8,
        ),
        SkillsListView(),
      ],
    );
  }
}
