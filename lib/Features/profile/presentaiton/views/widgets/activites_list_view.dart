

import 'package:flutter/material.dart';

import 'activity_item.dart';
class ActivitiesListView extends StatelessWidget {
  const ActivitiesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ActivityItem();
        });
  }
}