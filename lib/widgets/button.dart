import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';
import '../utils/constants.dart';
import '../utils/screen_size.dart';

custom_button(onPressed, String s) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      // width: double.infinity,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: ButtonColor,
        // borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal*6)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: GestureDetector(child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),))),
    ),
  );
}

custom_button1(onPressed, String s,load) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      width: SizeConfig.screenWidth,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(
        color: appbarcolor,
        borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.blockSizeHorizontal*2)
            ),
      ),
      child: TextButton(onPressed: onPressed, child: load?Container(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: blue_text,
          )):Text(s,style: TextStyle(color: Colors.white),)),
    ),
  );
}

custom_Searchbutton(onPressed, String s) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      // width: double.infinity,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: Colors.yellow[800],
        // borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal*6)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),)),
    ),
  );
}
custom_button_2(onPressed,color_2, String s) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20,),
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: color_2,
        borderRadius: BorderRadius.all(Radius.circular(2.5)),
      ),
      child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),)),
    ),
  );
}
custom_regisbutton(onPressed, String s) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      // width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: Colors.blue[700],
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),)),
    ),
  );
}
custom_Deletebutton(onPressed, String s) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      // width: double.infinity,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: DeleteBtn,
        // borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal*6)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: GestureDetector(child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),))),
    ),
  );
}
custom_Editbutton(onPressed, String s) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      // width: double.infinity,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: EditBtn,
        // borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal*6)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: GestureDetector(child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),))),
    ),
  );
}

custom_Newbutton(onPressed, colour, String s) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      // width: double.infinity,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: colour,
        // borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal*6)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: GestureDetector(child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),))),
    ),
  );
}

uplod_download(onPressed, String s,color_) {
  return Padding(padding:EdgeInsets.symmetric(horizontal: 3.0),
    child: Container(
      decoration: BoxDecoration(color: color_,
        // borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal*6)),
        borderRadius: BorderRadius.circular(3),
      ),
      child: GestureDetector(child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white,letterSpacing:1,fontSize: SizeConfig.safeBlockVertical*2)))),
    ),
  );
}

custom_button_green(onPressed, String s) {
  return Padding(
    padding: const EdgeInsets.all(2),
    child: Container(
      // width: double.infinity,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: Colors.green,
        // borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal*6)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: GestureDetector(child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),))),
    ),
  );
}