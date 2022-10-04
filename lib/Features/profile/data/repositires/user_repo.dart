import 'dart:async';
import 'package:social_media_ui/Features/profile/data/models/user_derails.dart';
import 'package:social_media_ui/asssets.dart';

class UserRepo {
  Future<UserDetailsModel> getUserDetails() async {
    UserDetailsModel user = await Future.delayed(
      const Duration(milliseconds: 2500),
      buildUserDetailsModel,
    );

    return user;
  }

  FutureOr<UserDetailsModel> buildUserDetailsModel() {
    return UserDetailsModel(
      image: AssetsData.profile,
      connectionsNumber: 100,
      followersNumber: 852,
      followingNumber: 156,
      name: 'Ersad Basbag',
      address: 'Istanbul, Turkey',
      jobTitle: 'Ux Designer',
      employer: 'Apple',
      description: 'Offering Ux design servies in Istanbul',
      skills: ['#design', '#graphics', '#virtual', '#reality', '#adobexd'],
      activities: [
        Activity(
          profileImage: AssetsData.profile,
          name: 'Ersad Basbag',
          time: '2',
          content: 'Hello everyone',
          activityImage: AssetsData.activeity,
        ),
        Activity(
          profileImage: AssetsData.profile,
          name: 'Tharwat samy',
          time: '4',
          content: 'Hello everyone',
          activityImage: AssetsData.activeity,
        )
      ],
      skillsCollection: [
        SkillsCollection(
          name: 'Main Skills',
          skills: [
            '#design',
            '#graphics',
            '#mobile apps',
            '#virtual',
            '#reality',
            '#adobexd'
          ],
        ),
        SkillsCollection(
          name: 'Complementary Skills',
          skills: ['#design', '#bloc pattern', '#flutter', '#mvvm', 'adobexd'],
        ),
        SkillsCollection(
          name: 'Soft Skills',
          skills: [
            '#team player',
            '#problem solver',
            '#attention to details',
            '#mvvm',
            'adobexd'
          ],
        )
      ],
    );
  }
}
