import 'package:flutter/material.dart';
import 'package:insta_clone/viewmodels/navigation_viewmodel.dart';
import 'package:insta_clone/views/account.dart';
import 'package:insta_clone/views/activity.dart';
import 'package:insta_clone/views/add_new_post.dart';
import 'package:insta_clone/views/main_screen.dart';
import 'package:insta_clone/views/search_screen.dart';
import 'app/locator.dart';
import 'views/signup.dart';
import 'utils/screen_util.dart';
import 'views/login.dart';
import 'utils/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configure();
  runApp(
    MaterialApp(
      navigatorKey: locator<NavigationViewModel>().navigationKey,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        SignUpScreen.id: (context) => SignUpScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        MainScreen.id:(context) => MainScreen(),
        SearchScreen.id:(context) => SearchScreen(),
        PostScreen.id: (context) => PostScreen(),
        ActivityScreen.id:(context) => ActivityScreen(),
        AccountScreen.id: (context) => AccountScreen(),
      },
      //home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(
        width: MediaQuery.of(context).size.width.round(),
        height: MediaQuery.of(context).size.height.round(),
        allowFontScaling: true);
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return LoginScreen();
          },
        );
      },
    );
  }
}
