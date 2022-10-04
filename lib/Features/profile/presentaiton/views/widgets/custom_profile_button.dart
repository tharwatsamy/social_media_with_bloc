import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomPrrofileButton extends StatelessWidget {
  const CustomPrrofileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kPrimaryColor.withOpacity(.08),
      ),
      child: const Center(
        child: Text(
          'Follow',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
