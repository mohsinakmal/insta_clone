import 'package:stacked/stacked.dart';

class NavViewModel extends BaseViewModel{
  int curredIndex = 0;
  void updateIndex(int index){
    curredIndex = index;
    notifyListeners();
  }
}