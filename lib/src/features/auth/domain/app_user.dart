import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_user.freezed.dart';
part 'app_user.g.dart';

typedef UserID = String;

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required UserID id,
    required String email,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
