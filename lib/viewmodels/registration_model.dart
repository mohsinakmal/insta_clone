
import 'package:flutter/cupertino.dart';
import 'package:insta_clone/models/index.dart';
import 'package:insta_clone/services/auth_services_hit.dart';
import 'package:insta_clone/viewmodels/my_base_viewmodel.dart';
import 'package:insta_clone/views/main_screen.dart';

class RegistrationViewModel extends MyBaseViewModel{
  AuthServicesHit _authServicesHit = AuthServicesHit();
  SignupDetails dataModel = SignupDetails();
  final emailController = TextEditingController();
  final fullNameController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  String errorMessage;

  void initializeModel() async{
    emailController.clear();
    fullNameController.clear();
    userNameController.clear();
    passwordController.clear();
  }

  void createAccount() async{
    if(emailController.text.isNotEmpty){
      if(fullNameController.text.isNotEmpty){
        if(userNameController.text.isNotEmpty){
          if(passwordController.text.isNotEmpty){
             dataModel.email = emailController.text;
             dataModel.password = passwordController.text ;
             setBusyForObject("isSigningUp", true);
             var response = await _authServicesHit.signup(dataModel);
             if(response != null){
               //Navigator.pushNamed(context, MainScreen.id);
               print('success');
             }
          }
          else{
            showError('Password is required');
          }
        }else{
          showError('UserName is required');
        }
      }else{
        showError("FullName is required");
      }
    }else{
      showError('Email is required');
    }
  }

  void login() async{
    if(emailController.text.isNotEmpty){
      if(passwordController.text.isNotEmpty){
        // email = emailController.toString().trim();
        // password = passwordController.toString().trim();
        var response = await _authServicesHit.login(emailController.text, passwordController.text);
        if(response != null){
          navigateToMainScreen();
        }
      }else{
        showError('password is required');
      }
    }else{
      showError('email is required');
    }
  }

  void navigateToMainScreen(){
    navService.navigateToMainScreen();
  }

  void showError(String eMessage){
    eMessage = errorMessage;
    notifyListeners();
  }
}