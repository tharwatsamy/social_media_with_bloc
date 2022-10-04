 import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Features/profile/data/models/user_derails.dart';
import '../../../Features/profile/presentaiton/blocs/bloc/user_details_bloc.dart';

UserDetailsModel getUserDetails(BuildContext context) => BlocProvider.of<UserDetailsBloc>(context).userDetailsModel;