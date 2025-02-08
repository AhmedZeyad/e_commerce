import 'package:json_annotation/json_annotation.dart';

part 'signup_model.g.dart'; // Make sure this line is included

@JsonSerializable()
class SignupModel {
  late String? name;
  late String? email;
  late String? password;
  final String role;
  late String? avatar;
  SignupModel({
    this.name,
    this.email,
    this.password,
    this.role = "customer",
    this.avatar,
  });
  factory SignupModel.fromJson(Map<String, dynamic> json) =>
      _$SignupModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignupModelToJson(this);
}


