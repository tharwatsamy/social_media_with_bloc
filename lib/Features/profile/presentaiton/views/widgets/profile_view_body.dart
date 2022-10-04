import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/custom_search_app_bar.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_actions_button.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_info.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/skills_item.dart';
import 'package:social_media_ui/constants.dart';

import 'activites_list_view.dart';
import 'activity_item.dart';
import 'all_skills_item.dart';
import 'all_skills_list_view.dart';
import 'connections_info.dart';
import 'custom_divider.dart';

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
                  height: 16,
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
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          )
        ];
      },
      body: const ProfilePageView(),
    );
  }
}

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  late final PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                const IconTextWidget(),
                const SizedBox(
                  width: 24,
                ),
                const IconTextWidget(),
                const Spacer(),
                Icon(
                  FontAwesomeIcons.slidersH,
                  color: Colors.grey.withOpacity(.7),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                children: const [
                  ActivitiesListView(),
                  AllSkillsLis                                                                                                                    .tView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
