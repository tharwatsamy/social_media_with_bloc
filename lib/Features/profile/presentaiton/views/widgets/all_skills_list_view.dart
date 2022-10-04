

import 'package:flutter/material.dart';

import 'all_skills_item.dart';
class AllSkillsListView extends StatelessWidget {
  const AllSkillsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const AllSkillsItem();
        });
  }
}