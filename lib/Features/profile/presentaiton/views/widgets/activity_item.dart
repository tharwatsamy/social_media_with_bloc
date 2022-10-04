import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/data/models/user_derails.dart';
import 'package:social_media_ui/styles.dart';

import '../../../../../constants.dart';
import '../../../data/models/activity_model.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({Key? key, required this.activity}) : super(key: key);

  final Activity activity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(activity.profileImage),
          ),
          title: Text(
            activity.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            '${activity.time} hours ago',
            style: TextStyle(
              color: Colors.grey.withOpacity(.7),
              fontSize: 12,
            ),
          ),
          trailing: const Icon(
            Icons.more_horiz,
          ),
        ),
        Text(
          activity.content,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: AspectRatio(
            aspectRatio: 5 / 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kPrimaryColor,
                image: DecorationImage(
                  image: AssetImage(activity.activityImage),
                  fit: BoxFit.fill,
                ),
              ),
              width: double.infinity,
            ),
          ),
        ),
      ],
    );
  }
}
