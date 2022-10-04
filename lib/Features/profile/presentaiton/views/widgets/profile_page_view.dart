

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

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
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                AllSkillsListView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
