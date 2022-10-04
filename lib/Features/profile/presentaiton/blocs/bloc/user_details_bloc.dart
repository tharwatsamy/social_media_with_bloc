import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:social_media_ui/Features/profile/data/models/user_derails.dart';
import 'package:social_media_ui/Features/profile/data/repositires/user_repo.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  final UserRepo userRepo;

  late UserDetailsModel userDetailsModel;
  UserDetailsBloc(this.userRepo) : super(UserDetailsInitial()) {
    on<UserDetailsEvent>((event, emit) async {
      if (event is FetchUserDetails) {
        emit(UserDetailsLoading());
        try {
          userDetailsModel = await userRepo.getUserDetails();
          emit(UserDetailsSuccess());
        } catch (e) {
          emit(UserDetailsFailure(e.toString()));
        }
      }
    });
  }
}
