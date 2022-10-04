import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/page_view_item.dart';
import 'package:social_media_ui/core/utils/functions/get_user_details.dart';

import 'activites_list_view.dart';
import 'all_skills_item.dart';
import 'all_skills_list_view.dart';

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
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var user = getUserDetails(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              PageViewTapItem(
                onTap: () {
                  _controller.animateToPage(
                    0,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeIn,
                  );
                },
                isActive: isActive(0),
                text: 'Activity',
                icon: Icons.dashboard,
              ),
              const SizedBox(
                width: 24,
              ),
              PageViewTapItem(
                onTap: () {
                  _controller.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeIn,
                  );
                },
                text: 'About',
                isActive: isActive(1),
                icon: Icons.portrait,
              ),
              const Spacer(),
              Icon(
                FontAwesomeIcons.slidersH,
                color: Colors.grey.withOpacity(.7),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const ListViewSeprator(),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                ActivitiesListView(
                  activites: user.activities,
                ),
                SkillsCollectionsListView(
                  skillsCollections: user.skillsCollection,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  isActive(int index) {
    return index == getPage();
  }

  int getPage() {
    if (_controller.hasClients) {
      return _controller.page!.round();
    } else {
      return 0;
    }
  }
}

class ListViewSeprator extends StatelessWidget {
  const ListViewSeprator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: Divider(
        color: Colors.grey.withOpacity(.1),
        thickness: 7,
      ),
    );
  }
}
