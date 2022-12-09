import 'package:flutter/widgets.dart';
import 'package:flutter_chat/ui/LoginPage.dart';
import 'package:flutter_chat/ui/MyPage.dart';
import 'package:flutter_chat/ui/PersonalPage.dart';
import 'package:flutter_chat/ui/RegisterPage.dart';
import 'package:flutter_chat/ui/SquarePage.dart';
import 'package:flutter_chat/ui/chatdetail/ChatDeatail.dart';
import 'package:flutter_chat/ui/home/ChatListPage.dart';

class Routes {
  static const String loginPage = "/loginPage";
  static const String registerPage = "/registerPage";

  static const String chatListPage = "/chatListPage";

  static const String chatDetailPage = "/chatDetailPage";

  static const String personalPage = "/personalPage";

  static const String squarePage = "/squarePage";

  static const String myPage = "/myPage";

  static const String bubbleWidget = "/bubbleWidget";

  static final Map<String, WidgetBuilder> routes = {
    //登录
    Routes.loginPage: (context, {arguments}) => LoginPage(arguments: arguments),
    //注册
    Routes.registerPage: (context, {arguments}) =>
        RegisterPage(arguments: arguments),
    //聊天列表
    Routes.chatListPage: (context, {arguments}) =>
        ChatListPage(arguments: arguments),
    //聊天详情页
    Routes.chatDetailPage: (context, {arguments}) =>
        ChatDetailPage(arguments: arguments),
    //个人页
    Routes.personalPage: (context, {arguments}) =>
        PersonalPage(arguments: arguments),
    //朋友圈页
    Routes.squarePage: (context, {arguments}) =>
        SquarePage(arguments: arguments),
    //动画页
    Routes.myPage: (context, {arguments}) => MyPage(arguments: arguments),
  };
}
