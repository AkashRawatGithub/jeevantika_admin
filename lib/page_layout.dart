import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hovering/hovering.dart';
import 'package:jeevantika_Web/screens/Analytics/analytic_investor_list.dart';
import 'package:jeevantika_Web/screens/Analytics/consolidted_investor_list.dart';
import 'package:jeevantika_Web/screens/Analytics/customer_contact.dart';
import 'package:jeevantika_Web/screens/Analytics/export_Investor.dart';
import 'package:jeevantika_Web/screens/Analytics/export_notication_data.dart';
import 'package:jeevantika_Web/screens/Analytics/export_search_investor.dart';
import 'package:jeevantika_Web/screens/Analytics/per_user_analytics.dart';
import 'package:jeevantika_Web/screens/Analytics/user_history.dart';
import 'package:jeevantika_Web/screens/Associate/add_associate.dart';
import 'package:jeevantika_Web/screens/Associate/manage_associate.dart';
import 'package:jeevantika_Web/screens/Business_Partner/add_business_partner.dart';
import 'package:jeevantika_Web/screens/Business_Partner/business_partner_request.dart';
import 'package:jeevantika_Web/screens/Business_Partner/manage_business_patner.dart';
import 'package:jeevantika_Web/screens/Catogery/Research_Category.dart';
import 'package:jeevantika_Web/screens/Catogery/video_category.dart';
import 'package:jeevantika_Web/screens/Company/add_company.dart';
import 'package:jeevantika_Web/screens/Company/manage_company.dart';
import 'package:jeevantika_Web/screens/Coupon%20Code/add_coupon_code.dart';
import 'package:jeevantika_Web/screens/Coupon%20Code/manage_coupon_code.dart';
import 'package:jeevantika_Web/screens/Homedata/homedata_article.dart';
import 'package:jeevantika_Web/screens/Homedata/homedata_information.dart';
import 'package:jeevantika_Web/screens/Homedata/homedata_slider.dart';
import 'package:jeevantika_Web/screens/Homedata/homedata_testimonial.dart';
import 'package:jeevantika_Web/screens/Homedata/homedata_video.dart';
import 'package:jeevantika_Web/screens/Homedata/homedata_weblink.dart';
import 'package:jeevantika_Web/screens/Managedata/backoffice_list.dart';
import 'package:jeevantika_Web/screens/Managedata/business_partner_list.dart';
import 'package:jeevantika_Web/screens/Coupon%20Code/edit.dart';
import 'package:jeevantika_Web/screens/Managedata/import_data.dart';
import 'package:jeevantika_Web/screens/Managedata/investor_list.dart';
import 'package:jeevantika_Web/screens/Managedata/liasoning_table.dart';
import 'package:jeevantika_Web/screens/Manager/add_manager.dart';
import 'package:jeevantika_Web/screens/Manager/manage_manage.dart';
import 'package:jeevantika_Web/screens/Map%20Contact/add_map_contact.dart';
import 'package:jeevantika_Web/screens/Map%20Contact/map_contact_list.dart';
import 'package:jeevantika_Web/screens/Notification/add_event.dart';
import 'package:jeevantika_Web/screens/Notification/add_notification_group.dart';
import 'package:jeevantika_Web/screens/Notification/add_notification_indivisual.dart';
import 'package:jeevantika_Web/screens/Notification/customer_groups.dart';
import 'package:jeevantika_Web/screens/Notification/message_event_template.dart';
import 'package:jeevantika_Web/screens/backoffice/change_password.dart';
import 'package:jeevantika_Web/screens/dashboard.dart';
import 'package:jeevantika_Web/screens/statistics.dart';
import 'package:jeevantika_Web/utils/constants.dart';
import 'package:jeevantika_Web/utils/responsive.dart';
import 'package:jeevantika_Web/utils/screen_size.dart';
import 'package:jeevantika_Web/widgets/dashbord_widget.dart';
import 'package:jeevantika_Web/widgets/get_drawer.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
var smallscrn;
class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool size_ = true;  bool visib = false;
  var Registrar_ = false; var drawercrm = false;  var addCompany_ = false;  var Business_part = false;
  var Associated_ = false;var Analytic = false;var Manager_ = false;
  var Change_pass=false; var statics_= false;
  var Company_ = false;  var notification_ = false;
  var categories_ = false;  var zoho_sub = false;
  var homedata_= false;  var dashBoard_=true;  var managedata_= false;
  var mapcontact_= false;  var couponcode_= false;
  //26 for akash file
  //after 26 manoj index start
  int currentIndex = 0;
  List Classes_open=[
    DashBoard(), ManageCompany(),    AddCompany(),    ManageCompany(),    CustomerGroups(),    AddNotificationGroup(),
    AddNotificationindividual(),    NotificationTemplate(),    AddEvent(),    VideoCategory(),    ResearchCategories(),
    HomeDataVideos(),    HomeDataTestimonial(),    HomedataArticle(),    HomeDataInformation(),    HomeDataWeblink(),
    HomeDataSlider(),    ImportData(),    InvestorList(),    BackofficeList(),    LiasoningList(),    BusinessPartnerList(),
    AddMapContact(),    MapContactList(),    AddCouponCode(),    ManageCouponCode(),    ChangePassword() ,
    Add_Manager(),Manage_Manager(),Add_API_Patner(),Manage_Business_patner(),
    Add_Associate(),Manage_Associate(),Export_Investor(),Export_search_list(), Request_Business(),Export_Notificationdata(),
    AnalyticInvestorList(),ConsolidtedInvestorList(),AnalyticCustomerContact(),AnalyticUserHistory(),PerUserAnalytic(),
    Statistics()
  ];
  @override
  Widget build(BuildContext context,) {
    SizeTamp().init(context);
    return Scaffold(
      key: scaffoldKey,
      // drawer: getDrawer(),
      // drawer: Drawer(
      //   backgroundColor: sidenav,
      //   child: SafeArea(
      //     child:Column(
      //       children: [
      //         ListTile(
      //           dense: true,
      //           title: Text("Home Page",style: TextStyle(color: righticons),),
      //           leading: Icon(Icons.home),
      //           onTap: (){
      //             //action when this menu is pressed
      //           },
      //         ),
      //
      //         ListTile(
      //           dense: true,
      //           title: Text("My Profile",style: TextStyle(color: righticons),),
      //           leading: Icon(Icons.person),
      //           onTap: (){
      //             //action when this menu is pressed
      //           },
      //         ),
      //         ListTile(
      //           dense: true,
      //           title: Text("My Orders",style: TextStyle(color: righticons),),
      //           leading: Icon(Icons.add_box),
      //           onTap: (){
      //             //action when this menu is pressed
      //           },
      //         ),
      //         ListTile(
      //           dense: true,
      //           title: Text("My Favourites",style: TextStyle(color: righticons),),
      //           leading: Icon(Icons.monitor_heart),
      //           onTap: (){
      //             //action when this menu is pressed
      //           },
      //         )
      //       ],
      //     )
      // ),),
      appBar: AppBar(backgroundColor: topnav,leading: !ResponsiveWidget.isSmallScreen(context)? Container(
        child: Image.asset("assets/images/1.png",),
      ):IconButton(icon: Icon(Icons.menu,color: Colors.white,),
        onPressed: (){
          if(scaffoldKey.currentState.isDrawerOpen){
            scaffoldKey.currentState.closeDrawer();
          }else{
            scaffoldKey.currentState.openDrawer();
          }
        },),
      title:  Row(
          children: [
            Expanded(child: Container()),
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
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: SizeTamp.blockSizeVertical*89,
              child: Stack(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        decoration: BoxDecoration(color: sidenav),
                        // height: MediaQuery.of(context).size.height*1,
                        // width: Company_?MediaQuery.of(context).size.width*0.12:notification_?MediaQuery.of(context).size.width*0.12
                        //     :categories_?MediaQuery.of(context).size.width*0.12:homedata_?MediaQuery.of(context).size.width*0.12
                        //     :managedata_?MediaQuery.of(context).size.width*0.12:mapcontact_?MediaQuery.of(context).size.width*0.12
                        //     :couponcode_?MediaQuery.of(context).size.width*0.12:Manager_?MediaQuery.of(context).size.width*0.12
                        //     :Associated_?MediaQuery.of(context).size.width*0.12:Business_part?MediaQuery.of(context).size.width*0.12
                        //     :Analytic?MediaQuery.of(context).size.width*0.12:Registrar_?MediaQuery.of(context).size.width*0.12:MediaQuery.of(context).size.width*0.042,
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,mainAxisSize: MainAxisSize.max,
                          children: <Widget> [
                            SingleChildScrollView(scrollDirection: Axis.vertical,
                              child: Container(
                                padding: EdgeInsets.only(right: 5),
                                child: Column(mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(height: 6,),
                                    // dashboard
                                    sidebarContainer(
                                      context,
                                      dashBoard_==true?Colors.white:sidenav,
                                      GestureDetector(onTap: (){setState(() {statics_=false;
                                        dashBoard_=true;currentIndex=0;Company_ =false;notification_ = false;categories_=false;mapcontact_=false;couponcode_=false;
                                        Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;Change_pass=false;

                                      });},
                                        child: Icon_Title(
                                            Icons.dashboard,Colors.pink,
                                            "Dashboard"),
                                      ),),


                                    // Company
                                    sidebarContainer(context,
                                      Company_==true? Colors.white:null,
                                      GestureDetector(onTap: (){setState(() {
                                        Company_=!Company_;
                                        Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;
                                        notification_ = false;dashBoard_=false;categories_=false;homedata_=false;managedata_=false;
                                        mapcontact_=false;couponcode_=false;Change_pass=false;statics_=false;
                                      });},
                                        child:Icon_Title(
                                            Icons.school,Colors.pink,
                                            "Company"),
                                      ),
                                    ),
                                    // Business Partner
                                    sidebarContainer(context,
                                      Business_part==true?Colors.white:null,
                                      GestureDetector(onTap: (){setState(() {
                                        Business_part= !Business_part;statics_=false;
                                        Registrar_=false;Manager_=false;Analytic=false;Associated_=false;
                                        notification_ =false;Company_= false;dashBoard_=false;categories_=false;
                                        managedata_=false;homedata_=false;mapcontact_=false;couponcode_=false;Change_pass=false;
                                      });},
                                        child: Icon_Title(
                                            Icons.person,Colors.pink,
                                            "Business Partner"),
                                      ),
                                    ),
                                    // Container(
                                    //   width: MediaQuery.of(context).size.width/33,
                                    //   decoration: Business_part==true?BoxDecoration(color:Colors.white):null,
                                    //   child: GestureDetector(onTap: (){setState(() {
                                    //     Business_part= !Business_part;
                                    //     Registrar_=false;Manager_=false;Analytic=false;Associated_=false;
                                    //     notification_ =false;
                                    //     Company_= false;
                                    //     dashBoard_=false;
                                    //     categories_=false;
                                    //     managedata_=false;
                                    //     homedata_=false;
                                    //     mapcontact_=false;
                                    //     couponcode_=false;
                                    //   });},
                                    //     child: Column(
                                    //       children: [
                                    //           Icon(Icons.person,size: 20,color: Colors.pink),
                                    //           SizedBox(height: 5,),Text("Business Partner",style: TextStyle(fontSize: 9,color: SideiconName,),textAlign: TextAlign.center,),Padding(padding: EdgeInsets.only(bottom: 5)),
                                    //          ]),
                                    //   ),
                                    // ),

                                    // Manager
                                    sidebarContainer(context,
                                      Manager_==true?Colors.white:null,
                                      GestureDetector(onTap: (){setState(() {
                                        Manager_ =! Manager_;Business_part= false;statics_=false;
                                        Registrar_=false;Analytic=false;Associated_=false;Company_=false;notification_ = false;Company_= false;
                                        dashBoard_=false;categories_=false;managedata_=false;homedata_=false;mapcontact_=false;couponcode_=false;Change_pass=false;
                                      });},
                                        child:Icon_Title(
                                            Icons.person,Colors.blue,
                                            "Manager"),
                                      ),
                                    ),
                                    // Associate
                                    sidebarContainer(
                                      context,
                                      Associated_==true?Colors.white:null,
                                      GestureDetector(
                                        onTap: () {setState(() {
                                          Associated_ =! Associated_;statics_=false;
                                          Registrar_=false;Manager_=false;Analytic=false; Business_part = false;Company_= false;
                                          notification_ = false;dashBoard_=false;categories_=false;managedata_=false;homedata_=false;
                                          mapcontact_=false;couponcode_=false;Change_pass=false;
                                        });},
                                        child:Icon_Title(
                                            Icons.person,Colors.pink,
                                            "Associate"),
                                      ),
                                    ),
                                    // Registrar
                                    sidebarContainer(context,
                                      Registrar_==true?Colors.white:null,
                                      GestureDetector(onTap: (){setState(() {
                                        Registrar_ =! Registrar_;statics_=false;
                                        Manager_=false;Analytic=false;Associated_=false; Business_part = false;Company_= false;dashBoard_=false;
                                        Company_= false;dashBoard_=false;categories_=false;managedata_=false;homedata_=false;mapcontact_=false;
                                        notification_ = false;couponcode_=false;Change_pass=false;
                                      });},
                                        child:Icon_Title(
                                            Icons.heat_pump_outlined,Colors.pink,
                                            "Registrar"),
                                      ),
                                    ),
                                    // Analytic
                                    sidebarContainer(context,
                                      Analytic==true?Colors.white:null,
                                      GestureDetector(onTap: (){setState(() {
                                        Analytic=!Analytic;statics_=false;
                                        Registrar_=false;Manager_=false;Associated_=false; Business_part = false;mapcontact_=false;couponcode_=false;
                                        notification_ =false;Company_= false;dashBoard_=false;categories_=false;managedata_=false;homedata_=false;Change_pass=false;
                                      });},
                                        child:Icon_Title(
                                            Icons.person,Colors.redAccent,
                                            "Analytic"),
                                      ),
                                    ),
                                    // Notification
                                    sidebarContainer(context,
                                      notification_==true?Colors.white:null,
                                      GestureDetector(onTap: (){
                                        setState(() {
                                          notification_ =! notification_;statics_=false;
                                          Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;Company_= false;
                                          dashBoard_=false;categories_=false;managedata_=false;homedata_=false;mapcontact_=false;couponcode_=false;Change_pass=false;
                                        });
                                      },
                                        child:Icon_Title(
                                            Icons.notifications,Colors.pink,
                                            "Notification"),
                                      ),
                                    ),
                                    // categorie
                                    sidebarContainer(context,
                                      categories_==true?Colors.white:null,
                                      GestureDetector(onTap: (){setState(() {
                                        categories_ =! categories_;statics_=false;
                                        Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;Company_= false;Change_pass=false;
                                        dashBoard_=false;notification_ = false;homedata_=false;managedata_=false;mapcontact_=false;couponcode_=false;
                                      });
                                      },
                                        child: Icon_Title(
                                            Icons.category,Colors.yellow.shade800,
                                            "Categories"),
                                      ),
                                    ),
                                    // Home Data
                                    sidebarContainer(context,
                                      homedata_==true?Colors.white:null,
                                      GestureDetector(onTap: (){setState(() {
                                        homedata_ =! homedata_;statics_=false;
                                        Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;notification_ = false;
                                        Company_= false;dashBoard_=false;categories_=false;managedata_=false;mapcontact_=false;couponcode_=false;Change_pass=false;
                                      });
                                      },
                                        child:Icon_Title(
                                            Icons.home_rounded,Colors.pink,
                                            "Home Data"),
                                      ),
                                    ),
                                    // Manage data
                                    sidebarContainer(context,
                                      managedata_==true?Colors.white:null,
                                      GestureDetector(
                                        onTap: (){setState(() {
                                          managedata_ =! managedata_;statics_=false;
                                          Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;notification_ = false;
                                          Company_= false;dashBoard_=false;categories_=false;homedata_=false;mapcontact_=false;couponcode_=false;Change_pass=false;
                                        });},
                                        child: Icon_Title(
                                            Icons.manage_accounts,Colors.pink,
                                            "Manage Data"),
                                      ),
                                    ),
                                    // Map Contact
                                    sidebarContainer(context,
                                      mapcontact_==true? Colors.white:null,
                                      GestureDetector(onTap: (){setState(() {
                                        mapcontact_ =! mapcontact_;statics_=false;
                                        Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;notification_ = false;
                                        Company_= false;dashBoard_=false;categories_=false;homedata_=false;managedata_=false;couponcode_=false;Change_pass=false;
                                      });
                                      },
                                        child:Icon_Title(
                                            Icons.perm_contact_cal_rounded,Colors.pink,
                                            "Map Contact"),
                                      ),
                                    ),


                                    // Coupon Code
                                    sidebarContainer(context,
                                      couponcode_==true?Colors.white:null,
                                      GestureDetector(
                                        onTap: (){setState(() {
                                          couponcode_ =! couponcode_;statics_=false;
                                          Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;notification_ = false;
                                          Company_= false;dashBoard_=false;categories_=false;homedata_=false;managedata_=false;mapcontact_=false;Change_pass=false;
                                        });
                                        },
                                        child: Icon_Title(
                                            Icons.person,Colors.pink,
                                            "Coupon Code"),
                                      ),
                                    ),
                                    sidebarContainer(
                                      context,
                                      Change_pass==true?Colors.white:sidenav,
                                      GestureDetector(onTap: (){setState(() {
                                        Change_pass=true;statics_=false;
                                        dashBoard_=false;currentIndex=26;Company_ =false;notification_ = false;categories_=false;mapcontact_=false;couponcode_=false;
                                        Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;
                                      });},
                                        child: Icon_Title(
                                            Icons.edit_attributes,Colors.pink,
                                            "Change Password"),
                                      ),),

                                    sidebarContainer(
                                      context,
                                      statics_==true?Colors.white:sidenav,
                                      GestureDetector(onTap: (){setState(() {
                                        Change_pass=false;statics_=true;
                                        dashBoard_=false;currentIndex=44;Company_ =false;notification_ = false;categories_=false;mapcontact_=false;couponcode_=false;
                                        Registrar_=false;Manager_=false;Analytic=false;Associated_=false; Business_part = false;
                                      });},
                                        child: Icon_Title(
                                            Icons.stacked_bar_chart,Colors.pink,
                                            "Statics"),
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 16,
                        child: Container(height: MediaQuery.of(context).size.width,
                          child: Classes_open[currentIndex],)
                      // dashBoard_==true?DashBoard():addCompany_==true?AddCompany():manageCompany_==true?ManageCompany():Container(),
                    ),

                  ],
                ),
                  AnimatedContainer(
                  duration: Duration(microseconds: 20000),
                    curve: Curves.elasticInOut,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))),
                  alignment: AlignmentDirectional.topStart,
                  margin: EdgeInsets.only(
                    top:Company_?MediaQuery.of(context).size.height*0.12:Business_part?MediaQuery.of(context).size.height*0.23
                        :Manager_?MediaQuery.of(context).size.height*0.32:Associated_?MediaQuery.of(context).size.height*0.42
                        :Registrar_?MediaQuery.of(context).size.height*0.52:Analytic?MediaQuery.of(context).size.height*0.60
                        :notification_?MediaQuery.of(context).size.height*0.70:categories_?MediaQuery.of(context).size.height*0.18:homedata_?MediaQuery.of(context).size.height*0.27
                        :managedata_?MediaQuery.of(context).size.height*0.38:mapcontact_?MediaQuery.of(context).size.height*0.49
                        :couponcode_?MediaQuery.of(context).size.height*0.60:MediaQuery.of(context).size.height*0,
                    left: MediaQuery.of(context).size.width*0.046,
                  ),
                  height: Company_?SizeTamp.safeBlockVertical*12:Business_part?SizeTamp.safeBlockVertical*13:
                    Manager_?SizeTamp.safeBlockVertical*12:Associated_?SizeTamp.safeBlockVertical*12:
                    Registrar_?SizeTamp.safeBlockVertical*12:Analytic?SizeTamp.safeBlockVertical*38
                    :categories_?SizeTamp.safeBlockVertical*12:homedata_?SizeTamp.safeBlockVertical*28
                    :managedata_?SizeTamp.safeBlockVertical*22:mapcontact_?SizeTamp.safeBlockVertical*12
                      :notification_?SizeTamp.safeBlockVertical*25:couponcode_?SizeTamp.safeBlockVertical*15:SizeTamp.safeBlockVertical*20,
                  width: Company_?SizeTamp.blockSizeHorizontal*09:Business_part?SizeTamp.blockSizeHorizontal*12
                      :Manager_?SizeTamp.blockSizeHorizontal*10:Associated_?SizeTamp.blockSizeHorizontal*12
                      :Registrar_?SizeTamp.blockSizeHorizontal*10:Analytic?SizeTamp.blockSizeHorizontal*26
                      :categories_?SizeTamp.blockSizeHorizontal*10:homedata_?SizeTamp.blockSizeHorizontal*10
                      :managedata_?SizeTamp.blockSizeHorizontal*13:mapcontact_?SizeTamp.blockSizeHorizontal*12
                      :Company_?SizeTamp.blockSizeHorizontal*10:Business_part?SizeTamp.blockSizeHorizontal*12
                      :notification_?SizeTamp.blockSizeHorizontal*15:couponcode_?SizeTamp.blockSizeHorizontal*12:SizeTamp.blockSizeHorizontal*15,
                  child: Company_ ?  Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top:15.0),
                          child:GestureDetector(
                            onTap: (){setState(() {
                              currentIndex=2;
                              Company_=false;
                            });},
                            child: HoverContainer(
                              height: 26,
                              alignment: Alignment.centerLeft,
                              color: currentIndex==2?sidenav:null,
                              hoverColor: Colors.white10,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("Add Company",style: TextStyle(color: Colors.white,fontSize: 11),),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){setState(() {
                            currentIndex=3;
                            Company_=false;
                          });},
                          child: HoverContainer(
                            height: 26,
                            alignment: Alignment.centerLeft,
                            color: currentIndex==3?sidenav:null,
                            hoverColor: Colors.white10,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text("Manage Comapany",style: TextStyle(color: Colors.white,fontSize: 11),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  :notification_?  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 600),decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){setState(() {
                              notification_= false;
                              currentIndex=4;
                            });},
                            child: HoverContainer(
                              height: 26,
                              alignment: Alignment.centerLeft,
                              color: currentIndex==4?sidenav:null,
                              hoverColor: Colors.white10,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("Add Customer Group",style: TextStyle(color: Colors.white,fontSize: 11),),
                              ),
                            ),
                          ),

                          SizedBox(height: 4,),
                          GestureDetector(
                            onTap: (){setState(() {
                              currentIndex=5;notification_=false;
                            });},
                            child: HoverContainer(
                              height: 26,
                              alignment: Alignment.centerLeft,
                              color: currentIndex==5?sidenav:null,
                              hoverColor: Colors.white10,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("Add Notification Group",style: TextStyle(color: Colors.white,fontSize: 11),),
                              ),
                            ),
                          ),

                          SizedBox(height: 4,),
                          GestureDetector(
                            onTap: (){setState(() {
                              notification_= false;
                              currentIndex=6;
                            });},
                            child: HoverContainer(
                              height: 26,
                              alignment: Alignment.centerLeft,
                              color: currentIndex==6?sidenav:null,
                              hoverColor: Colors.white10,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Add Notification Indivisual",style: TextStyle(color: Colors.white,fontSize: 11),),
                              ),
                            ),
                          ),

                          SizedBox(height: 4,),
                          GestureDetector(
                            onTap: (){setState(() {
                              currentIndex=7;notification_=false;
                            });},
                            child: HoverContainer(
                              height: 26,
                              alignment: Alignment.centerLeft,
                              color: currentIndex==7?sidenav:null,
                              hoverColor: Colors.white10,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("Notification Templete",style: TextStyle(color: Colors.white,fontSize: 11),),
                              ),
                            ),
                          ),
                          SizedBox(height: 4,),
                          GestureDetector(
                            onTap: (){setState(() {
                              currentIndex=8;notification_=false;
                            });},
                            child: HoverContainer(
                              height: 26,
                              alignment: Alignment.centerLeft,
                              color: currentIndex==8?sidenav:null,
                              hoverColor: Colors.white10,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("Add Event",style: TextStyle(color: Colors.white,fontSize: 11),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  :categories_?  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:15.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=9;categories_=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==9?sidenav:null,
                                  hoverColor: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Video Category",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=10;categories_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==10?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Research Categories",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  )
                  :homedata_? Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:5.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=11;homedata_=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==11?sidenav:null,
                                  hoverColor: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Video",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=13;homedata_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==13?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Article",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=16;homedata_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==16?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Slider",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=12;homedata_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==12?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Testimonial",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=14;homedata_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==14?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Information",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=15;homedata_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==15?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Weblink",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  :Manager_? Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child:GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=29;Manager_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==29?sidenav:null,
                                width: MediaQuery.of(context).size.width/12,
                                hoverColor: Colors.white10,
                                hoverWidth: MediaQuery.of(context).size.width/12,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Add Manager",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){setState(() {
                              currentIndex=30;Manager_=false;
                            });},
                            child: HoverContainer(
                              height: 26,
                              alignment: Alignment.centerLeft,
                              color: currentIndex==30?sidenav:null,
                              width: MediaQuery.of(context).size.width/12,
                              hoverColor: Colors.white10,
                              hoverWidth: MediaQuery.of(context).size.width/12,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("Manage Manager",style: TextStyle(color: Colors.white,fontSize: 11),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  :Associated_? Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:15.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=33;Associated_=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==33?sidenav:null,
                                  width: MediaQuery.of(context).size.width/12,
                                  hoverColor: Colors.white10,
                                  hoverWidth: MediaQuery.of(context).size.width/12,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Add Associate",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=34;Associated_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==34?sidenav:null,
                                width: MediaQuery.of(context).size.width/12,
                                hoverColor: Colors.white10,
                                hoverWidth: MediaQuery.of(context).size.width/12,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Manage Associate",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  :Business_part? Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=31;
                                Business_part=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==31?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Add Business Partner",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=32;
                                Business_part=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==32?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Manage Business Partner",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=37;
                                Business_part=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==37?sidenav:null,
                                hoverColor: Colors.white10,
                                child: const Padding(
                                  padding:  EdgeInsets.only(left: 15.0),
                                  child: Text("Request Business Partner",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  :Registrar_? Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:15.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=27;Registrar_=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==27?sidenav:null,
                                  width: MediaQuery.of(context).size.width/12,
                                  hoverColor: Colors.white10,
                                  hoverWidth: MediaQuery.of(context).size.width/12,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Add Registrar",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=28;Registrar_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==28?sidenav:null,
                                width: MediaQuery.of(context).size.width/12,
                                hoverColor: Colors.white10,
                                hoverWidth: MediaQuery.of(context).size.width/12,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Manage Registrar",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  :Analytic? Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=35;Analytic=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==35?sidenav:null,
                                width: MediaQuery.of(context).size.width/12,
                                hoverColor: Colors.white10,
                                hoverWidth: MediaQuery.of(context).size.width/12,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Export Investor",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:5.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=38;Analytic=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==38?sidenav:null,
                                  width: MediaQuery.of(context).size.width/12,
                                  hoverColor: Colors.white10,
                                  hoverWidth: MediaQuery.of(context).size.width/12,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Export Notification Data",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:5.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=39;Analytic=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==39?sidenav:null,
                                  width: MediaQuery.of(context).size.width/12,
                                  hoverColor: Colors.white10,
                                  hoverWidth: MediaQuery.of(context).size.width/12,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Analytic Investor List",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top:5.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=40;Analytic=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==40?sidenav:null,
                                  width: MediaQuery.of(context).size.width/12,
                                  hoverColor: Colors.white10,
                                  hoverWidth: MediaQuery.of(context).size.width/12,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Consolidated Investor List",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top:5.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=41;Analytic=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==41?sidenav:null,
                                  width: MediaQuery.of(context).size.width/12,
                                  hoverColor: Colors.white10,
                                  hoverWidth: MediaQuery.of(context).size.width/12,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Contact of customers",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top:5.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=42;Analytic=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==42?sidenav:null,
                                  width: MediaQuery.of(context).size.width/12,
                                  hoverColor: Colors.white10,
                                  hoverWidth: MediaQuery.of(context).size.width/12,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("User History",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top:5.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=43;Analytic=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==43?sidenav:null,
                                  width: MediaQuery.of(context).size.width/12,
                                  hoverColor: Colors.white10,
                                  hoverWidth: MediaQuery.of(context).size.width/12,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Per User Analytic",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  :managedata_?  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:5.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=17;managedata_=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==17?sidenav:null,
                                  hoverColor: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Import Data",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=18;managedata_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==18?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Investor List",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=19;managedata_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==19?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Backoffice List",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=20;managedata_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==20?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Liasoning List",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=21;managedata_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==21?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Business Partner List",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  :mapcontact_?  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:15.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=22;mapcontact_=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==22?sidenav:null,
                                  hoverColor: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Add Map Contact",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=23;mapcontact_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==23?sidenav:null,
                                width: MediaQuery.of(context).size.width/12,
                                hoverColor: Colors.white10,
                                hoverWidth: MediaQuery.of(context).size.width/12,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Map Contact List",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  )
                  :couponcode_?  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                      color: Colors.black87.withOpacity(0.7),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:15.0),
                              child:GestureDetector(
                                onTap: (){setState(() {
                                  currentIndex=24;couponcode_=false;
                                });},
                                child: HoverContainer(
                                  height: 26,
                                  alignment: Alignment.centerLeft,
                                  color: currentIndex==24?sidenav:null,
                                  hoverColor: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text("Add Coupon Code",style: TextStyle(color: Colors.white,fontSize: 11),),
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){setState(() {
                                currentIndex=25;couponcode_=false;
                              });},
                              child: HoverContainer(
                                height: 26,
                                alignment: Alignment.centerLeft,
                                color: currentIndex==25?sidenav:null,
                                hoverColor: Colors.white10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Manage Coupon Code",style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  )
                      :Container(),
                ),
              ],),
            ),
          ],
        ),
      ),

        bottomNavigationBar: BottomAppBar(
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
        ),
    );
  }
}
