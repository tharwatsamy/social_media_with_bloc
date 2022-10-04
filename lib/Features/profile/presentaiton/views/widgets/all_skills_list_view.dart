import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/data/models/user_derails.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_page_view.dart';

import '../../../data/models/skills_collection.dart';
import 'all_skills_item.dart';

class SkillsCollectionsListView extends StatelessWidget {
  const SkillsCollectionsListView({Key? key, required this.skillsCollections})
      : super(key: key);

  final List<SkillsCollection> skillsCollections;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const ListViewSeprator();
        },
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: skillsCollections.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: AllSkillsItem(
              skills: skillsCollections[index].skills,
              text: skillsCollections[index].name,
            ),
          );
        });
  }
}
