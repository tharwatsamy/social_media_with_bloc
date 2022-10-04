import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/custom_search_app_bar.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_info.dart';

import 'custom_divider.dart';
import 'profile_page_view.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, _) {
        return [
          SliverToBoxAdapter(
            child: Column(
              children: const [
                SizedBox(
                  height: 8,
                ),
                CustomSearchAppBar(),
                SizedBox(
                  height: 8,
                ),
                CustomDivider(),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ProfileInfo(),
                ),
                SizedBox(
                  height: 16,
                ),
                CustomDivider(),
              ],
            ),
          )
        ];
      },
      body: const ProfilePageView(),
    );
  }
}
