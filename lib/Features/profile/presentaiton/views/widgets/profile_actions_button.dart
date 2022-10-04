
import 'package:flutter/material.dart';

import 'custom_profile_button.dart';
class ProfileInfoActionButtons extends StatelessWidget {
  const ProfileInfoActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomPrrofileButton(),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: CustomPrrofileButton(),
        ),
      ],
    );
  }
}
