import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/skills_list_view.dart';
import 'package:social_media_ui/core/utils/functions/get_user_details.dart';

import '../../../../../styles.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = getUserDetails(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.name,
          style: Styles.body1,
        ),
        const SizedBox(
          height: 4,
        ),
        Text.rich(
          style: Styles.body6,
          TextSpan(
            children: [
              TextSpan(text: user.address),
              TextSpan(text: ' ${user.jobTitle} - '),
              TextSpan(text: user.employer),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          user.description,
          style: Styles.body6,
        ),
        const SizedBox(
          height: 16,
        ),
        SkillsListView(
          skills: user.skills,
        ),
      ],
    );
  }
}
