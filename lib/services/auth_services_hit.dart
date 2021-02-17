
import 'package:firebase_auth/firebase_auth.dart';
import 'package:insta_clone/abstract_classes/auth_service.dart';
import 'package:insta_clone/viewmodels/my_base_viewmodel.dart';

class AuthServicesHit extends MyBaseViewModel implements AuthService{
  @override
  Future login(String email, String password) async{
    try{
     var user = await FirebaseAuth.instance.signInWithEmailAndPassword(
         email: email,
         password: password,);
     return user;
    }catch(e){
      print(e);
    }
  }

  @override
  Future signup(data) async{
    try{
    var newUser = await mAuth.createUserWithEmailAndPassword(email: data.email, password: data.password);
     //  data.id = mAuth.currentUser.uid;
     // return await fireStore.collection("Users").doc(data.id).set(data.toJson());
      return newUser;
    }catch(e){
      print(e);
    }
  }

}