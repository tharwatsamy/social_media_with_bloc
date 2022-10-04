import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_actions_button.dart';

import 'connections_info.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
