import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media_ui/Features/profile/presentaiton/blocs/bloc/user_details_bloc.dart';
import 'package:social_media_ui/Features/profile/presentaiton/views/widgets/profile_view_body.dart';
import 'package:social_media_ui/constants.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  static String id = 'profille view';

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UserDetailsBloc>(context).add(FetchUserDetails());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: kPrimaryColor,
          items: [
            const BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.envelopeOpen,
                size: 20,
              ),
            ),
            const BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: CircleAvatar(
                backgroundColor: kPrimaryColor.withOpacity(.05),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kPrimaryColor,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    size: 18,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
            const BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.userGroup,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    FontAwesomeIcons.bell,
                    size: 20,
                  ),
                  Positioned(
                    top: -8,
                    right: -4,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xffBE3744),
                      child: Center(
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
      body: BlocBuilder<UserDetailsBloc, UserDetailsState>(
        builder: (context, state) {
          if (state is UserDetailsSuccess) {
            return const SafeArea(child: ProfileViewBody());
          } else if (state is UserDetailsFailure) {
            return Center(
              child: Text(state.errMessage),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
