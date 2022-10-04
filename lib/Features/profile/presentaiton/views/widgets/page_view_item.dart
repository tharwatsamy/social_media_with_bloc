import 'package:flutter/material.dart';
import 'package:social_media_ui/constants.dart';
import 'package:social_media_ui/styles.dart';

class PageViewTapItem extends StatelessWidget {
  const PageViewTapItem({
    Key? key,
    required this.text,
    required this.icon,
    this.isActive = false, required this.onTap,
  }) : super(key: key);

  final String text;

  final IconData icon;

  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: !isActive ? Colors.grey.withOpacity(.6) : kPrimaryColor,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: !isActive
                ? Styles.body6
                : const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
          )
        ],
      ),
    );
  }
}
