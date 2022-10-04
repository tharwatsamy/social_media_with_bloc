import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_actions_button.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/user_details.dart';
import 'package:social_media_ui/core/utils/functions/get_user_details.dart';

import 'connect_button.dart';
import 'connections_info.dart';
import 'options_button.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = getUserDetails(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage(user.image),
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
        const AdditionalInfo(),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: const [
            Expanded(
              child: ConnectButton(),
            ),
            SizedBox(
              width: 16,
            ),
            OptionsButton(),
          ],
        )
      ],
    );
  }
}
