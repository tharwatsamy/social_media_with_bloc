class UserDetails {
  final String image;

  final int connectionsNumber;
  final int followersNumber;
  final int followingNumber;
  final String name;
  final String address;
  final String jobTitle;
  final String employer;
  final String description;
  final List<Skill> skills;
  final List<Activity> activities;
  final List<SkillsCollection> skillsCollection;

  UserDetails({
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

class Skill {
  final String name;

  Skill({required this.name});
}

class Activity {
  final String profileImage;
  final String name;
  final String time;

  final String content;
  final String activityImage;

  Activity(
      {required this.profileImage,
      required this.name,
      required this.time,
      required this.content,
      required this.activityImage});
}

class SkillsCollection {
  final String name;
  final List<Skill> skills;

  SkillsCollection({
    required this.name,
    required this.skills,
  });
}
