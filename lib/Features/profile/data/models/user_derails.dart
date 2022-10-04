import 'package:social_media_ui/Features/profile/data/models/skills_collection.dart';

import 'activity_model.dart';

class UserDetailsModel {
  final String image;

  final int connectionsNumber;
  final int followersNumber;
  final int followingNumber;
  final String name;
  final String address;
  final String jobTitle;
  final String employer;
  final String description;
  final List<String> skills;
  final List<Activity> activities;
  final List<SkillsCollection> skillsCollection;

  UserDetailsModel({
    required this.image,
    required this.connectionsNumber,
    required this.followersNumber,
    required this.followingNumber,
    required this.name,
    required this.address,
    required this.jobTitle,
    required this.employer,
    required this.description,
    required this.skills,
    required this.activities,
    required this.skillsCollection,
  });
}
