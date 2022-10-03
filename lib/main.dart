import 'package:flutter/material.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/profile_view.dart';

void main() {
  runApp(const SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      routes: {
        ProfileView.id: (context) => const ProfileView(),
      },
      initialRoute: ProfileView.id,
    );
  }
}
