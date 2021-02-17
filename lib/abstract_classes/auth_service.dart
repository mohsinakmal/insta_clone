
import 'package:insta_clone/models/index.dart';

abstract class AuthService{
  Future login(String email, String password);
  Future signup(SignupDetails data);
}