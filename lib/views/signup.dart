import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/constants/constant.dart';
import 'package:insta_clone/utils/color_utils.dart';
import 'package:insta_clone/utils/common_functions.dart';
import 'package:insta_clone/utils/size_config.dart';

class SignUpScreen extends StatefulWidget {

  static String id = 'signup_screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.unFocus();
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body:
          SingleChildScrollView(
            child: Column(
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
                SizedBox(height: SizeConfig.heightMultiplier * 3,),
                Container(
                  child: Text
                    ('Sign up to see photos and videos from your friends',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 2.8,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 3,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0,),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                      onPressed: (){},
                      child: Text('Log in with facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.textMultiplier * 2.5,
                      ),
                      ),
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 3,),
                Center(
                  child: Text('OR',
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 3,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0,),
                  child: TextField(
                    decoration: kInputDecoration.copyWith(hintText: 'Mobile Number or Email'),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 2,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0,),
                  child: TextField(
                    decoration: kInputDecoration.copyWith(hintText: 'Full Name'),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 3,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0,),
                  child: TextField(
                    decoration: kInputDecoration.copyWith(hintText: 'Username'),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 3,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0,),
                  child: TextField(
                    decoration: kInputDecoration.copyWith(hintText: 'Password'),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 3,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                      onPressed: (){},
                      color: ColorUtils.loginButtonColor,
                      child: Text('Sign up',
                        style: TextStyle(color: Colors.white),
                      ),),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 4,),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text
                      ('By signing up, you agree to our Terms , Data Policy and Cookies Policy .',
                      textAlign: TextAlign.center,
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
      ),
    );
  }
}
