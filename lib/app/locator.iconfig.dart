// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************



import 'package:get_it/get_it.dart';
import 'package:insta_clone/viewmodels/nav_view_models.dart';
import 'package:insta_clone/viewmodels/navigation_viewmodel.dart';
import 'package:insta_clone/viewmodels/registration_model.dart';


Future<void> $initGetIt(GetIt g, {String environment}) async{
  g.registerLazySingleton<NavViewModel>(() => NavViewModel());
  g.registerLazySingleton<NavigationViewModel>(() => NavigationViewModel());
  g.registerLazySingleton<RegistrationViewModel>(() => RegistrationViewModel());

}
