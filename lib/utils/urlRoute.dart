import 'package:flutter/cupertino.dart';
import 'package:jeevantika_Web/screens/Analytics/analytic_investor_list.dart';
import 'package:jeevantika_Web/screens/Analytics/consolidted_investor_list.dart';
import 'package:jeevantika_Web/screens/Analytics/customer_contact.dart';
import 'package:jeevantika_Web/screens/Analytics/export_Investor.dart';
import 'package:jeevantika_Web/screens/Analytics/export_notication_data.dart';
import 'package:jeevantika_Web/screens/Analytics/user_history.dart';
import 'package:jeevantika_Web/screens/Associate/add_associate.dart';
import 'package:jeevantika_Web/screens/Associate/manage_associate.dart';
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
import 'package:jeevantika_Web/screens/Managedata/import_data.dart';
import 'package:jeevantika_Web/screens/Managedata/investor_list.dart';
import 'package:jeevantika_Web/screens/Managedata/liasoning_table.dart';
import 'package:jeevantika_Web/screens/Manager/add_manager.dart';
import 'package:jeevantika_Web/screens/Notification/add_event.dart';
import 'package:jeevantika_Web/screens/Notification/add_notification_group.dart';
import 'package:jeevantika_Web/screens/Notification/add_notification_indivisual.dart';
import 'package:jeevantika_Web/screens/Notification/customer_groups.dart';
import 'package:jeevantika_Web/screens/Notification/message_event_template.dart';
import 'package:jeevantika_Web/screens/dashboard.dart';

import '../screens/Analytics/per_user_analytics.dart';
import '../screens/Business_Partner/add_business_partner.dart';
import '../screens/Business_Partner/business_partner_request.dart';
import '../screens/Business_Partner/manage_business_patner.dart';
import '../screens/Managedata/business_partner_list.dart';
import '../screens/Manager/manage_manage.dart';
import '../screens/Map Contact/add_map_contact.dart';
import '../screens/Map Contact/map_contact_list.dart';
import '../screens/Test.dart';

class RoutesName {
  // ignore: non_constant_identifier_names
  static const String FIRST_PAGE = '/admin_dashboard';
  // ignore: non_constant_identifier_names
  static const String ADD_COMPANY = '/add_company';
  static const String MANAGE_COMPANY = '/manage_company';
  static const String ADD_APIPARTNER = '/add_Business_Partner';
  static const String MANAGE_BUSINESS = '/Manage_Business_Partner';
  static const String REQUEST_BUSINESS = '/Request_Business_Partner';
  static const String ADD_MANAGER = '/add_manager';
  static const String MANAGE_MANAGER = '/manage_manager';
  static const String ADD_ASSOCIATE = '/add_associate';
  static const String MANAGE_ASSOCIATE = '/manage_associate';
  static const String ADD_REGISTRAR = '/add_registrar';
  static const String MANAGE_REGISTRAR = '/manage_registrar';
  static const String EXPORT_INVESTOR = '/export_investor';
  static const String ADD_CUSTOM_GRP = '/add_customer_group';
  static const String NOTIFI_GRP = '/add_notification_group';
  static const String NOTIFI_INDIVISUAL = '/add_notification_indivisual';
  static const String NOTIFI_TEMPLETE = '/notification_templete';
  static const String ADD_EVENT = '/add_event';
  static const String VIDEO_CATEGORY = '/video_category';
  static const String RESEARCH_CATEGORY = '/research_categories';
  static const String HOMEDATA_VIDEO = '/homedata_video';
  static const String HOMEDATA_ARTICAL = '/homedata_artical';
  static const String HOMEDATA_SLIDER = '/homedata_slider';
  static const String HOMEDATA_TESTIMONIAL = '/homedata_testimonial';
  static const String HOMEDATA_INFO = '/homedata_information';
  static const String HOMEDATA_WEBLINK = '/homedata_weblink';
  static const String IMPORT_DATA = '/import_data';
  static const String INVESTOR_LIST = '/investor_list';
  static const String BACKOFFICE_LIST = '/backoffice_list';
  static const String LIASONING_LIST = '/liasoning_list';
  static const String BUSINESS_PARTNER_LIST = '/business_partner_list';
  static const String ADD_MAP_CONTACT = '/add_map_contact';
  static const String MAP_CONTACT_LIST = '/map_contact_list';
  static const String ADD_COUPON_CODE = '/add_coupon_code';
  static const String MANAGE_COUPON_CODE = '/manage_coupon_code';
  static const String EXPORT_NOTIFI = '/export_notification';
  static const String ANALYTIC_INV_LIST = '/analytic_investor_list';
  static const String CONSOLIDATE_INVESTOR_LIST = '/consolidate_investor_list';
  static const String USER_HISTORY = '/user_history';
  static const String ANALYTIC_CUST_CONTACT = '/analytic_customer_contact';
  static const String PER_USER_ANALYTIC = '/per_user_analytic';
  static const String TESTPAGE = '/test';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RoutesName.TESTPAGE:
        return _GeneratePageRoute(
            widget: Test(), routeName: settings.name);


      case RoutesName.FIRST_PAGE:
        return _GeneratePageRoute(
            widget: DashBoard(), routeName: settings.name);
      case RoutesName.ADD_COMPANY:
        return _GeneratePageRoute(
            widget: AddCompany(), routeName: settings.name);
      case RoutesName.MANAGE_COMPANY:
        return _GeneratePageRoute(
            widget: ManageCompany(), routeName: settings.name);
      case RoutesName.ADD_APIPARTNER:
        return _GeneratePageRoute(
            widget: Add_API_Patner(), routeName: settings.name);
      case RoutesName.MANAGE_BUSINESS:
        return _GeneratePageRoute(
            widget: Manage_Business_patner(), routeName: settings.name);
      case RoutesName.REQUEST_BUSINESS:
        return _GeneratePageRoute(
            widget: Request_Business(), routeName: settings.name);
      case RoutesName.ADD_MANAGER:
        return _GeneratePageRoute(
            widget: Add_Manager(), routeName: settings.name);
      case RoutesName.MANAGE_MANAGER:
        return _GeneratePageRoute(
            widget: Manage_Manager(), routeName: settings.name);
      case RoutesName.ADD_ASSOCIATE:
        return _GeneratePageRoute(
            widget: Add_Associate(), routeName: settings.name);
      case RoutesName.MANAGE_ASSOCIATE:
        return _GeneratePageRoute(
            widget: Manage_Associate(), routeName: settings.name);



      case RoutesName.EXPORT_INVESTOR:
        return _GeneratePageRoute(
            widget: Export_Investor(), routeName: settings.name);
      case RoutesName.EXPORT_NOTIFI:
        return _GeneratePageRoute(
            widget: Export_Notificationdata(), routeName: settings.name);
      case RoutesName.ANALYTIC_INV_LIST:
        return _GeneratePageRoute(
            widget: AnalyticInvestorList(), routeName: settings.name);
      case RoutesName.CONSOLIDATE_INVESTOR_LIST:
        return _GeneratePageRoute(
            widget: ConsolidtedInvestorList(), routeName: settings.name);
      case RoutesName.USER_HISTORY:
        return _GeneratePageRoute(
            widget: AnalyticUserHistory(), routeName: settings.name);
      case RoutesName.ANALYTIC_CUST_CONTACT:
        return _GeneratePageRoute(
            widget: AnalyticCustomerContact(), routeName: settings.name);
      case RoutesName.PER_USER_ANALYTIC:
        return _GeneratePageRoute(
            widget: PerUserAnalytic(), routeName: settings.name);


      case RoutesName.ADD_CUSTOM_GRP:
        return _GeneratePageRoute(
            widget: CustomerGroups(), routeName: settings.name);
      case RoutesName.NOTIFI_GRP:
        return _GeneratePageRoute(
            widget: AddNotificationGroup(), routeName: settings.name);
      case RoutesName.NOTIFI_INDIVISUAL:
        return _GeneratePageRoute(
            widget: AddNotificationindividual(), routeName: settings.name);

      case RoutesName.NOTIFI_TEMPLETE:
        return _GeneratePageRoute(
            widget: NotificationTemplate(), routeName: settings.name);

      case RoutesName.ADD_EVENT:
        return _GeneratePageRoute(
            widget: AddEvent(), routeName: settings.name);

      case RoutesName.VIDEO_CATEGORY:
        return _GeneratePageRoute(
            widget: VideoCategory(), routeName: settings.name);

      case RoutesName.RESEARCH_CATEGORY:
        return _GeneratePageRoute(
            widget: ResearchCategories(), routeName: settings.name);

      case RoutesName.HOMEDATA_VIDEO:
        return _GeneratePageRoute(
            widget: HomeDataVideos(), routeName: settings.name);

      case RoutesName.HOMEDATA_ARTICAL:
        return _GeneratePageRoute(
            widget: HomedataArticle(), routeName: settings.name);

      case RoutesName.HOMEDATA_SLIDER:
        return _GeneratePageRoute(
            widget: HomeDataSlider(), routeName: settings.name);

      case RoutesName.HOMEDATA_TESTIMONIAL:
        return _GeneratePageRoute(
            widget: HomeDataTestimonial(), routeName: settings.name);

      case RoutesName.HOMEDATA_INFO:
        return _GeneratePageRoute(
            widget: HomeDataInformation(), routeName: settings.name);

      case RoutesName.HOMEDATA_WEBLINK:
        return _GeneratePageRoute(
            widget: HomeDataWeblink(), routeName: settings.name);

      case RoutesName.IMPORT_DATA:
        return _GeneratePageRoute(
            widget: ImportData(), routeName: settings.name);

      case RoutesName.INVESTOR_LIST:
        return _GeneratePageRoute(
            widget: InvestorList(), routeName: settings.name);

      case RoutesName.BACKOFFICE_LIST:
        return _GeneratePageRoute(
            widget: BackofficeList(), routeName: settings.name);

      case RoutesName.LIASONING_LIST:
        return _GeneratePageRoute(
            widget: LiasoningList(), routeName: settings.name);

      case RoutesName.BUSINESS_PARTNER_LIST:
        return _GeneratePageRoute(
            widget: BusinessPartnerList(), routeName: settings.name);

      case RoutesName.ADD_MAP_CONTACT:
        return _GeneratePageRoute(
            widget: AddMapContact(), routeName: settings.name);

      case RoutesName.MAP_CONTACT_LIST:
        return _GeneratePageRoute(
            widget: MapContactList(), routeName: settings.name);

      case RoutesName.ADD_COUPON_CODE:
        return _GeneratePageRoute(
            widget: AddCouponCode(), routeName: settings.name);
      case RoutesName.MANAGE_COUPON_CODE:
        return _GeneratePageRoute(
            widget: ManageCouponCode(), routeName: settings.name);




      default:
        return _GeneratePageRoute(
            widget: DashBoard(), routeName: settings.name);
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  _GeneratePageRoute({this.widget, this.routeName})
      : super(
      settings: RouteSettings(name: routeName),
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionDuration: Duration(milliseconds: 500),
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child) {
        return SlideTransition(
          textDirection: TextDirection.rtl,
          position: Tween<Offset>(
            begin: Offset(0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      });
}
