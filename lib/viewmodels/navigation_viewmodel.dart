import 'package:flutter/cupertino.dart';
import 'package:insta_clone/views/account.dart';
import 'package:insta_clone/views/activity.dart';
import 'package:insta_clone/views/add_new_post.dart';
import 'package:insta_clone/views/main_screen.dart';
import 'package:insta_clone/views/search_screen.dart';
import 'package:insta_clone/views/signup.dart';
import 'package:page_transition/page_transition.dart';

class NavigationViewModel{
  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
  void navigateToSignUpScreen() {
    navigationKey.currentState.push(PageTransition(
        type: PageTransitionType.fade,
        child: SignUpScreen()));
  }
  void navigateToMainScreen() {
    navigationKey.currentState.push(PageTransition(
        type: PageTransitionType.fade,
        child: MainScreen()));
  }
  void navigateToSearchScreen() {
    navigationKey.currentState.push(PageTransition(
        type: PageTransitionType.fade,
        child: SearchScreen()));
  }
  void navigateToPostScreen() {
    navigationKey.currentState.push(PageTransition(
        type: PageTransitionType.fade,
        child: PostScreen()));
  }
  void navigateToActivityScreen() {
    navigationKey.currentState.push(PageTransition(
        type: PageTransitionType.fade,
        child: ActivityScreen()));
  }
  void navigateToAccountScreen() {
    navigationKey.currentState.push(PageTransition(
        type: PageTransitionType.fade,
        child: AccountScreen()));
  }
}