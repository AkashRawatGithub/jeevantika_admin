import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

getAppBar() {
  return AppBar(automaticallyImplyLeading: false,backgroundColor: topnav,
  title:   Row(
    children: [
      Container(child: Image.asset("assets/images/1.png"),width: 140,),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(icon: Icon(Icons.mail, color: topicon,) , onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.notifications, color: topicon,),padding:EdgeInsets.only(right: 20,left: 20), onPressed: () {},),
            Stack(
              children: [
                IconButton(icon: Icon(Icons.flag, color: topicon,), onPressed: (){},),
              ],
            ),
            TextButton(onPressed: (){}, child: Text("Jeevantika", style: TextStyle(color: Colors.white),))
          ],
        ),
      ),

    ],
  ),);

}

getBottomBar(){
return BottomAppBar(
  color: footerBg,
  child: Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Copyright © 2018-2019 ",style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,)),
        InkWell(child: const Text("Jeevantika. ",style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Colors.green)),onTap: () {},),
        const Text(" All rights reserved.",style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,)),
      ],
    ),
  ),
);
}