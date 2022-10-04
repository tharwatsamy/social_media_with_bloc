import 'dart:async';
import 'package:social_media_ui/Features/profile/data/models/user_derails.dart';

import '../../../../core/utils/functions/build_user_details_model.dart';

class UserRepo {
  Future<UserDetailsModel> getUserDetails() async {
    UserDetailsModel user = await Future.delayed(
      const Duration(milliseconds: 2500),
      buildUserDetailsModel,
    );

    return user;
  }
}
