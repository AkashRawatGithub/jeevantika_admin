import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../utils/screen_size.dart';

dashbord(context,value,title,bton){
  return Card(
    child: SizedBox(
      width: MediaQuery.of(context).size.width*0.2,
      height: 120,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 4),
            child: Container(child: Text(value,style: TextStyle(fontSize: 18),),),
          ),
          SizedBox(height: 21,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(child: Text(title,style: TextStyle(fontSize: 18),),),
          ),
          SizedBox(height: 25,),
          Container(height: 28,width: MediaQuery.of(context).size.width*0.2, color: Colors.purple,child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(bton,style: TextStyle(color: Colors.white, fontSize: 14, ),),
              Icon(Icons.arrow_circle_right_sharp,color: Colors.white,size: 18,)
            ],
          ),)
        ],
      ),
    ),
  );
}

sidebarContainer(context,color,child){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 4),
    child: Container(
      width: SizeTamp.blockSizeHorizontal*04,
      height: SizeTamp.blockSizeVertical*9,
      decoration: BoxDecoration(color:color,borderRadius: BorderRadius.circular(3)),
      child: child,
    ),
  );
}
Icon_Title(icon_,icon_color,title){
  return Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
    Icon(icon_,size: SizeTamp.screenHeight*0.03,color: icon_color),
      Text(title,style: TextStyle(fontSize: SizeTamp.screenHeight*0.014,color: SideiconName,),textAlign: TextAlign.center,),
  ]);
}