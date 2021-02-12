import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/constants/constant.dart';
import 'package:insta_clone/utils/color_utils.dart';
import 'package:insta_clone/utils/size_config.dart';
import 'package:insta_clone/utils/common_functions.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.unFocus();
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: SizeConfig.heightMultiplier * 4),
                child: Center(
                  child: Text('Instagram',
                  style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 4,
                    fontFamily: 'Pacifico-Regular',
                  ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 4,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0,),
                child: TextField(
                  decoration: kInputDecoration.copyWith(hintText: 'Phone number, username, or email'),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0,),
                child: TextField(
                  decoration: kInputDecoration.copyWith(hintText: 'Password'),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 3,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                    onPressed: null,
                    disabledColor: ColorUtils.loginButtonColor,
                    child: Column(
                      children: [
                        Text('Log In',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              Center(
                child: Text('OR',
                style: TextStyle(
                  fontSize: 20.0
                ),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 8,
                child: Center(
                  child: Text('Log in with facebook',
                  style: TextStyle(fontSize: 15.0,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 4,
                child: Center(
                  child: Text('Forgot password?',
                    style: TextStyle(fontSize: 15.0,
                        color: Colors.blue.shade900,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                    ),
                    SizedBox(width: SizeConfig.widthMultiplier * 2,),
                    Text('Sign up',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.blue,
                    ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
