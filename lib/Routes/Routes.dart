
import 'package:eventsphere/Homepage/homepage.dart';
import 'package:eventsphere/Login_and_Signup/loginpage.dart';
import 'package:eventsphere/Login_and_Signup/otpverificationpage.dart';
import 'package:eventsphere/Login_and_Signup/signuppage.dart';
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
  static const String organizerhome = "/organizerhome";
  static const String addeventpage = "/addeventpage";
  static const String addsubeventpage = "/addsubeventpage";
  static const String addcoverimage = "/addcoverimage";
  static const String addimage = "/addimage";

  static List<GetPage> routes = [
    GetPage(name: loginscreen, page: () => LoginPage()),
    GetPage(name: signupscreen, page: () => SignupPage()),
    GetPage(name: otpvalidation, page: () => OtpverificationPage()),
    GetPage(name: homepage, page: () => HomePage()),
    // GetPage(name: favoritepage, page: () => FavoritesScreen()),
    // GetPage(name: profilepage, page: () => ProfileScreen()),
    // GetPage(name: ticketpage, page: () => TicketScreen()),
    // GetPage(name: profileEditing, page: () => ProfileEditingPage()),
    // GetPage(name: organizerhome, page: () => OrganizerHome()),
    // GetPage(name: addeventpage, page: () => AddEventPage()),
    // GetPage(name: addsubeventpage, page: () => AddSubEvents()),
    // GetPage(name: addcoverimage, page: () => UploadCoverImage()),
    // GetPage(name: addimage, page: () => UploadImage())
  ];
}
