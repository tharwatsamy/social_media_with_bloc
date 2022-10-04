import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/custom_search_app_bar.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_actions_button.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_info.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/skills_item.dart';
import 'package:social_media_ui/constants.dart';

import 'activity_item.dart';
import 'all_skills_item.dart';
import 'connections_info.dart';
import 'custom_divider.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 16,
        ),
        CustomSearchAppBar(),
        SizedBox(
          height: 8,
        ),
        CustomDivider(),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ProfileInfo(),
        ),
        SizedBox(
          height: 16,
        ),
        CustomDivider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: AllSkillsItem(),
        ),
      ],
    );
  }
}
