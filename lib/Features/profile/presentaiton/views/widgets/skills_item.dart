import 'package:flutter/material.dart';
import 'package:social_media_ui/constants.dart';
import 'package:social_media_ui/styles.dart';

class SkillsItem extends StatelessWidget {
  const SkillsItem({Key? key, required this.text, this.isActive = false})
      : super(key: key);

  final String text;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: isActive ? kPrimaryColor : Colors.grey.withOpacity(.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: isActive
                ? Styles.body6.copyWith(
                    color: kPrimaryColor,
                  )
                : Styles.body6,
          ),
        ],
      ),
    );
  }
}
