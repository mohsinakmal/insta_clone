import 'package:json_annotation/json_annotation.dart';

part 'signupDetails.g.dart';

@JsonSerializable()
class SignupDetails {
    SignupDetails();

    String email;
    String fullName;
    String userName;
    String password;
    String id;
    
    factory SignupDetails.fromJson(Map<String,dynamic> json) => _$SignupDetailsFromJson(json);
    Map<String, dynamic> toJson() => _$SignupDetailsToJson(this);
}
