
import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../utils/urlRoute.dart';

getDrawer(context){
  var dashBoard_=false;
  return Drawer(
    key: UniqueKey(),
    width: 200,
    backgroundColor: sidenav,
    child: SingleChildScrollView(
      child: SafeArea(
          child:Column(
            children: [

              SizedBox(height: 5,),
              ListTile(
                dense: true,
                title: Text("DashBoard",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.dashboard,color: Colors.purple ,),
                onTap: (){
                  //action when this menu is pressed
                  Navigator.pushNamed(context, RoutesName.FIRST_PAGE);
                },
              ),

              // ExpansionTile(
              //   title: Text("Company",style: TextStyle(color: righticons,fontSize: 15,),),
              //   leading: Icon(Icons.home),
              //   children: [
              //     ListTile(
              //       dense: true,
              //       title: Text("Add Company",style: TextStyle(color: righticons),),
              //       leading: Icon(Icons.person),
              //       onTap: (){
              //         //action when this menu is pressed
              //         Navigator.pushNamed(context, RoutesName.ADD_COMPANY);
              //       },
              //     ),
              //     ListTile(
              //       dense: true,
              //       title: Text("Manage Company",style: TextStyle(color: righticons),),
              //       leading: Icon(Icons.person),
              //       onTap: (){
              //         //action when this menu is pressed
              //         Navigator.pushNamed(context, RoutesName.MANAGE_COMPANY);
              //       },
              //     ),
              //   ],
              // ),
              ExpansionTile(
                title: Text("Business Partner",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.business,color: Colors.pink,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Add Business Partner",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.ADD_APIPARTNER);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Manage Business",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.MANAGE_BUSINESS);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Request Business",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.REQUEST_BUSINESS);
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text("Manager",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.manage_accounts_rounded, color: Colors.pink,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Add Manager",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.ADD_MANAGER);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Manage Manager",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.MANAGE_MANAGER);
                    },
                  ),
                ],
              ),

              ExpansionTile(
                title: Text("Associates",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.person, color: Colors.blueAccent,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Add Associate",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.ADD_ASSOCIATE);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Manage Associate",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.MANAGE_ASSOCIATE);
                    },
                  ),
                ],
              ),

              // ExpansionTile(
              //   title: Text("Registrar",style: TextStyle(color: righticons,fontSize: 15,),),
              //   leading: Icon(Icons.app_registration),
              //   children: [
              //     ListTile(
              //       dense: true,
              //       title: Text("Add Registrar",style: TextStyle(color: righticons),),

              //       onTap: (){
              //         //action when this menu is pressed
              //         Navigator.pushNamed(context, RoutesName.ADD_REGISTRAR);
              //       },
              //     ),
              //     ListTile(
              //       dense: true,
              //       title: Text("Manage Registrar",style: TextStyle(color: righticons),),

              //       onTap: (){
              //         //action when this menu is pressed
              //         Navigator.pushNamed(context, RoutesName.MANAGE_REGISTRAR);
              //       },
              //     ),
              //   ],
              // ),
              ExpansionTile(
                title: Text("Analytic",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.analytics, color: Colors.pink,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Export Investor",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.EXPORT_INVESTOR);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Export Notification",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.EXPORT_NOTIFI);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Analytic Investor List",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.ANALYTIC_INV_LIST);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Consolidte Investor List",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.CONSOLIDATE_INVESTOR_LIST);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("User History",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.USER_HISTORY);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Analytic Customer Contact",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.ANALYTIC_CUST_CONTACT);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Per User Analytic",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.PER_USER_ANALYTIC);
                    },
                  ),

                ],
              ),

              ExpansionTile(
                title: Text("Notification",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.notification_add,color: Colors.orange,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Add Customer Group",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.ADD_CUSTOM_GRP);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Send Notification Group",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.NOTIFI_GRP);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Send Notification Indivisual",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.NOTIFI_INDIVISUAL);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Notification Templete",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.NOTIFI_TEMPLETE);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Add Event",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.ADD_EVENT);
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text("Categories",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.category, color: Colors.pink,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Video Category",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.VIDEO_CATEGORY);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Research Category",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.RESEARCH_CATEGORY);
                    },
                  ),

                ],
              ),

              ExpansionTile(
                title: Text("Home Data",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.home_work_sharp, color: Colors.pink,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Video",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.HOMEDATA_VIDEO);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Artical",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.HOMEDATA_ARTICAL);
                    },
                  ),

                  ListTile(
                    dense: true,
                    title: Text("Slider",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.HOMEDATA_SLIDER);
                    },
                  ),

                  ListTile(
                    dense: true,
                    title: Text("Testimonial",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.HOMEDATA_TESTIMONIAL);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Information",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.HOMEDATA_INFO);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Weblink",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.HOMEDATA_WEBLINK);
                    },
                  ),
                ],
              ),

              ExpansionTile(
                title: Text("Manage Data",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.manage_accounts_rounded, color: Colors.purple,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Import Data",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.IMPORT_DATA);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Investor List",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.INVESTOR_LIST);
                    },
                  ),

                  ListTile(
                    dense: true,
                    title: Text("Backoffice List",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.BACKOFFICE_LIST);
                    },
                  ),

                  ListTile(
                    dense: true,
                    title: Text("Liasoning List",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.LIASONING_LIST);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Business Partner List",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.BUSINESS_PARTNER_LIST);
                    },
                  ),

                ],
              ),

              ExpansionTile(
                title: Text("Map Contact",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.contacts_rounded,color: Colors.blueAccent,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Add Map Contact",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.ADD_MAP_CONTACT);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Map Contact List",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.MAP_CONTACT_LIST);
                    },
                  ),
                ],
              ),

              ExpansionTile(
                  title: Text("Coupon Code",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.paste_sharp, color: Colors.white,),
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Add Coupon Code",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.ADD_COUPON_CODE);
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Manage Coupon Code",style: TextStyle(color: righticons),),
                    onTap: (){
                      //action when this menu is pressed
                      Navigator.pushNamed(context, RoutesName.MANAGE_COUPON_CODE);
                    },
                  ),

                ],
              ),


              ListTile(
                dense: true,
                title: Text("TEST",style: TextStyle(color: righticons,fontSize: 15,),),
                leading: Icon(Icons.dashboard,color: Colors.purple ,),
                onTap: (){
                  //action when this menu is pressed
                  Navigator.pushNamed(context, RoutesName.TESTPAGE);
                },
              ),
            ],
          )
      ),
    ),);
}