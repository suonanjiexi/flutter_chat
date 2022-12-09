import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat/routes/Routes.dart';

class LoginPage extends StatefulWidget {
  final Map arguments = {};
  LoginPage({super.key, arguments});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "images/FJ4tbtuXMAcwfT7.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const Divider(),
                    TextFormField(
                      decoration: const InputDecoration(hintText: "账号:"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(hintText: "密码:"),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                onPressed: () {
                                  login(context);
                                },
                                child: const Text("登录"),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                onPressed: () {
                                  register(context);
                                },
                                child: const Text("注册"),
                              ),
                            )
                          ],
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

void login(BuildContext context) async {
  Navigator.pushNamed(context, Routes.chatListPage,
      arguments: {"userName": "索南杰夕", "userId": 23333333});
}

void register(BuildContext context) async {
  Navigator.pushNamed(context, Routes.registerPage,
      arguments: {"userName": "索南杰夕", "userId": 23333333});
}
