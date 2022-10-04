import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/custom_search_app_bar.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        const CustomSearchAppBar(),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Divider(
            color: Colors.grey.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
