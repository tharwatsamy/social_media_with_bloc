

import 'package:flutter/material.dart';

import '../../../../../constants.dart';
class OptionsButton extends StatelessWidget {
  const OptionsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kButtonHeight,
      width: kButtonHeight,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey.withOpacity(.2),
        ),
      ),
      child: const Icon(
        Icons.more_horiz,
        color: kPrimaryColor,
      ),
    );
  }
}