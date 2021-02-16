// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************



import 'package:get_it/get_it.dart';
import 'package:insta_clone/viewmodels/nav_view_models.dart';
import 'package:insta_clone/viewmodels/navigation_viewmodel.dart';


Future<void> $initGetIt(GetIt g, {String environment}) async{
  //PrefrencesViewModel prefrencesViewModel = PrefrencesViewModel();
  //await prefrencesViewModel.getUserData();
  //g.registerLazySingleton<PrefrencesViewModel>(() => prefrencesViewModel);
  g.registerLazySingleton<NavViewModel>(() => NavViewModel());
  g.registerLazySingleton<NavigationViewModel>(() => NavigationViewModel());

}
