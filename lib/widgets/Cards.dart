import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

dynamicCardsWithbtn(context,value,name,btnvalue){
 return Card(
   shape: BeveledRectangleBorder(
     borderRadius: BorderRadius.circular(4.0),
   ),
    child: SizedBox(
      width: MediaQuery.of(context).size.width*0.2,
      height: 120,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 15 ,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(alignment:Alignment.center,child: Text(value,style: TextStyle(fontSize: 22),),),
          ),
          SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container( alignment:Alignment.center,child: Text(name,style: TextStyle(fontSize: 18),),),
          ),
          SizedBox(height: 16,),
          GestureDetector(
            onTap: (){btnvalue;},
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(4.0), bottomLeft: Radius.circular(4.0)),
              color: cardBtn,),
              height: 28,width:  MediaQuery.of(context).size.width*0.2, child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Export",style: TextStyle(color: Colors.white, fontSize: 14, ),),
                Icon(Icons.arrow_circle_right_sharp,color: Colors.white,size: 18,)
              ],
            ),),
          )
        ],
      ),
    ),
  );
}

dynamicCardswithoutbtn(context,value,name){
    return Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: SizedBox(
        width:  MediaQuery.of(context).size.width*0.2,
        height: 120,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 15 ,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(alignment:Alignment.center,child: Text(value,style: TextStyle(fontSize: 22),),),
            ),
            SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container( alignment:Alignment.center,child: Text(name,style: TextStyle(fontSize: 18),),),
            ),
            SizedBox(height: 16,),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(4.0), bottomLeft: Radius.circular(4.0)),
              color: cardBtn,),height: 28,width: MediaQuery.of(context).size.width*0.2,child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

            ),)
          ],
        ),
      ),
    );
}

dynamicCards(context) {
  return Card(
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.2,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(alignment: Alignment.center,
              child: Text("", style: TextStyle(fontSize: 22),),),
          ),
          SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(alignment: Alignment.center,
              child: Text("", style: TextStyle(fontSize: 18),),),
          ),

        ],
      ),
    ),
  );
}

dynamicCardsWithbtnlarge(context,value,name,btnvalue){
  return Card(
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: SizedBox(
      width: MediaQuery.of(context).size.width*0.2,
      height: 120,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 15 ,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(alignment:Alignment.center,child: Text(value,style: TextStyle(fontSize: 22),),),
          ),
          SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container( alignment:Alignment.center,child: Text(name,style: TextStyle(fontSize: 18),),),
          ),
          SizedBox(height: 16,),
          GestureDetector(
            onTap: (){btnvalue;},
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(4.0), bottomLeft: Radius.circular(4.0)),
                color: cardBtn,),
              height: 28,width:  MediaQuery.of(context).size.width*0.2, child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Export",style: TextStyle(color: Colors.white, fontSize: 14, ),),
                Icon(Icons.arrow_circle_right_sharp,color: Colors.white,size: 18,)
              ],
            ),),
          )
        ],
      ),
    ),
  );
}

dynamicCardswithoutbtnlarge(context,value,name){
  return Card(
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: SizedBox(
      width:  MediaQuery.of(context).size.width*0.2,
      height: 150,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(alignment:Alignment.center,child: Text(value,style: TextStyle(fontSize: 22),),),
          ),
          SizedBox(height: 18,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container( alignment:Alignment.center,child: Text(name,style: TextStyle(fontSize: 18),),),
          ),
          SizedBox(height: 19,),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(4.0), bottomLeft: Radius.circular(4.0)),
            color: cardBtn,),height: 28,width: MediaQuery.of(context).size.width*0.2,child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

          ),)
        ],
      ),
    ),
  );
}