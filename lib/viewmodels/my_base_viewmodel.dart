
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:insta_clone/app/locator.dart';
import 'package:insta_clone/viewmodels/navigation_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MyBaseViewModel extends BaseViewModel{
  var navService = locator<NavigationViewModel>();
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore fireStore = FirebaseFirestore.instance;



}