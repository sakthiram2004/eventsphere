import 'package:eventsphere/EventDiscription/eventdiscriptionpage.dart';
import 'package:eventsphere/EventDiscription/ticketpage.dart';
import 'package:eventsphere/Favoritepage/favoritespage.dart';
import 'package:eventsphere/Homepage/homepage.dart';
import 'package:eventsphere/Login_and_Signup/loginpage.dart';
import 'package:eventsphere/Login_and_Signup/otpverificationpage.dart';
import 'package:eventsphere/Login_and_Signup/signuppage.dart';
import 'package:eventsphere/profile/profile_editing_page.dart';
import 'package:eventsphere/profile/profilepage.dart';
import 'package:eventsphere/widgets/inagepicker.dart';
import 'package:get/get.dart';

class Routes {
  static const String loginscreen = "/loginScreen";
  static const String signupscreen = "/signupScreen";
  static const String otpvalidation = "/optvalidation";
  static const String homepage = "/homepage";
  static const String ticketpage = "/ticketpage";
  static const String favoritepage = "/favoritepage";
  static const String profilepage = "/profilepage";
  static const String profileEditing = "/profileEditipage";
  static const String pickimage = "/pickimage";
  static const String addeventpage = "/addeventpage";
  static const String addsubeventpage = "/addsubeventpage";
  static const String addcoverimage = "/addcoverimage";
  static const String addimage = "/addimage";
  static const String eventdetails = "/eventdetails";

  static List<GetPage> routes = [
    GetPage(name: loginscreen, page: () => LoginPage()),
    GetPage(name: signupscreen, page: () => SignupPage()),
    GetPage(name: otpvalidation, page: () => OtpverificationPage()),
    GetPage(name: homepage, page: () => HomePage()),
    GetPage(name: favoritepage, page: () => FavoritesScreen()),
    GetPage(name: profilepage, page: () => ProfileScreen()),
    GetPage(name: ticketpage, page: () => TicketScreen()),
    GetPage(name: profileEditing, page: () => ProfileEditingPage()),
    GetPage(name: eventdetails, page: () => EventDescription()),
    GetPage(name: pickimage, page: () => MultiImagePicker()),
  ];
}
