import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_ui/Features/profile/data/repositires/user_repo.dart';
import 'package:social_media_ui/Features/profile/presentaiton/blocs/bloc/user_details_bloc.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/profile_view.dart';

void main() {
  runApp(const SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserDetailsBloc(
            UserRepo(),
          ),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          ProfileView.id: (context) => const ProfileView(),
        },
        initialRoute: ProfileView.id,
      ),
    );
  }
}
