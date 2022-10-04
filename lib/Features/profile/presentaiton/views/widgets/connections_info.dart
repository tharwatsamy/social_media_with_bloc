import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_ui/Features/profile/data/models/user_derails.dart';
import 'package:social_media_ui/Features/profile/presentaiton/blocs/bloc/user_details_bloc.dart';

import '../../../../../core/utils/functions/get_user_details.dart';
import 'connection_item.dart';

class ConnectionsInfo extends StatelessWidget {
  const ConnectionsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = getUserDetails(context);
    return Row(
      children: [
        ConnectionItem(
          text: 'Connections',
          value: '${user.connectionsNumber}+',
        ),
        const SizedBox(
          width: 12,
        ),
        ConnectionItem(
          text: 'Followers',
          value: '${user.followersNumber}',
        ),
        const SizedBox(
          width: 12,
        ),
        ConnectionItem(
          text: 'Following',
          value: '${user.followingNumber}',
        ),
      ],
    );
  }

 
}
