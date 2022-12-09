import 'package:flutter/material.dart';
import 'package:flutter_chat/shiba.dart';
import 'package:flutter_chat/ui/ChatDetail/ChatDeatail.dart';
import 'package:flutter_chat/ui/Home/ChatListPage.dart';
import 'package:flutter_chat/ui/LoginPage.dart';
import 'package:flutter_chat/ui/MyPage.dart';
import 'package:flutter_chat/ui/PersonalPage.dart';
import 'package:flutter_chat/ui/RegisterPage.dart';
import 'package:flutter_chat/ui/SquarePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //double _width = MediaQuery.of(context).size.width;

    final Map<String, WidgetBuilder> routes = {
      "/chatListPage": (context, {arguments}) =>
          ChatListPage(arguments: arguments),
      "/chatDetailPage": (context, {arguments}) =>
          ChatDetailPage(arguments: arguments),
      "/": (context, {arguments}) => LoginPage(arguments: arguments),
      "/registerPage": (context, {arguments}) =>
          RegisterPage(arguments: arguments),
      "/personalPage": (context, {arguments}) =>
          PersonalPage(arguments: arguments),
      "/squarePage": (context, {arguments}) => SquarePage(arguments: arguments),
      "/myPage": (context, {arguments}) => MyPage(arguments: arguments),
      "/shibaPage": (context, {arguments}) => ShibaPage(arguments: arguments),
    };

    return MaterialApp(
      title: 'Flutter Chat',
      //showPerformanceOverlay: true,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/shibaPage",
      routes: routes,
      onGenerateRoute: (RouteSettings settings) {
        // 统一处理
        final String? name = settings.name;
        final Function? pageContentBuilder = routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
        return null;
      },
    );
  }
}
