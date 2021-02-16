import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/app/locator.dart';
import 'package:insta_clone/viewmodels/nav_view_models.dart';
import 'package:insta_clone/views/account.dart';
import 'package:insta_clone/views/activity.dart';
import 'package:insta_clone/views/add_new_post.dart';
import 'package:insta_clone/views/home_screen.dart';
import 'package:insta_clone/views/search_screen.dart';
import 'package:insta_clone/widgets/nav_bar.dart';
import 'package:stacked/stacked.dart';

class MainScreen extends StatefulWidget {
  static String id = 'main_screen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget getBodyViews(int index){
    switch(index){
      case 0 :
        return HomeScreenn();
      case 1 :
        return SearchScreen();
      case 2:
        return PostScreen();
      case 3:
        return ActivityScreen();
      case 4:
        return AccountScreen();
    }
  }
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavViewModel>.reactive(
      //onModelReady: (model) => model.initialise(),
      builder: (context, model, child) {
        return Scaffold(
          //backgroundColor: Colors.amber,
          bottomNavigationBar: NavBar(),
          body: PageTransitionSwitcher(
            transitionBuilder: (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                ) {
              return FadeThroughTransition(
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
            child: getBodyViews(model.curredIndex),
          ),
      );
    },
      viewModelBuilder: () => locator <NavViewModel>(), disposeViewModel: false,
    );
  }
}

