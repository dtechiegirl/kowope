
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class Persons with _$Persons{
  const factory Persons({
    required String emailAddress,
    required String fullName,
    @Default(0) double balance,
  }) = _User;

  factory Persons.fromJson(Map<String, dynamic> json) => _$PersonsFromJson(json);
}