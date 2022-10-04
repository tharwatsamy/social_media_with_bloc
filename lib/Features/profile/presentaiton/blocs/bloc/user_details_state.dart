part of 'user_details_bloc.dart';

@immutable
abstract class UserDetailsState {}

class UserDetailsInitial extends UserDetailsState {}

class UserDetailsLoading extends UserDetailsState {}

class UserDetailsSuccess extends UserDetailsState {}

class UserDetailsFailure extends UserDetailsState {
  final String errMessage;

  UserDetailsFailure(this.errMessage);
}
