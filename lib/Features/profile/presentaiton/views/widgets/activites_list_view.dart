import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/data/models/user_derails.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_page_view.dart';

import '../../../data/models/activity_model.dart';
import 'activity_item.dart';

class ActivitiesListView extends StatelessWidget {
  const ActivitiesListView({Key? key, required this.activites})
      : super(key: key);

  final List<Activity> activites;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const ListViewSeprator();
        },
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: activites.length,
        itemBuilder: (context, index) {
          return ActivityItem(
            activity: activites[index],
          );
        });
  }
}
