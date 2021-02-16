import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:insta_clone/utils/color_utils.dart';
import 'package:insta_clone/utils/image_utils.dart';
import 'package:insta_clone/utils/size_config.dart';
import 'package:insta_clone/viewmodels/nav_view_models.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class NavBar extends ViewModelWidget<NavViewModel>{
  List navDataList = [
    Icons.home,
    Icons.search,
    Icons.add_box_outlined,
    CupertinoIcons.heart,
    Icons.account_box,
  ];
  List<Widget> getNavItems(NavViewModel model){
    return List.generate(5, (index) => Expanded(
      flex:1,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: (){
          if(index!=model.curredIndex){
            model.updateIndex(index);
          }
        },
        child: Container(
          child: Icon(navDataList[index],size: SizeConfig.imageSizeMultiplier*6.5,
            color: model.curredIndex==index? Colors.black : Colors.grey,
          )
        ),
      ),
    ),
    );
  }
  @override
  Widget build(BuildContext context, NavViewModel viewModel) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3),
              blurRadius: SizeConfig.imageSizeMultiplier*2,
              offset: Offset(0.0, -3.0),
            ),
          ]
      ),
      height: 8*SizeConfig.heightMultiplier,
      width: double.infinity,
      child: Row(
          children: getNavItems(viewModel)
      ),
    );
  }
}