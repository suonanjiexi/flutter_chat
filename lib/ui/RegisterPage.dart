import 'package:flutter/material.dart';
import 'package:flutter_chat/routes/Routes.dart';
import 'package:flutter_chat/ui/LoginPage.dart';

class RegisterPage extends StatefulWidget {
  final Map arguments = {};
  RegisterPage({super.key, arguments});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        title: const Text("注册"),
      ),
      body: Center(
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: "账号:"),
              ),
              const Divider(),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(hintText: "密码:"),
              ),
              const Divider(),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(hintText: "确认密码:"),
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        // 设置圆角
                        shape: MaterialStateProperty.all(
                          const StadiumBorder(
                            side: BorderSide(style: BorderStyle.none),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.loginPage,
                            arguments: {
                              "userName": "索南杰夕",
                              "userId": 23333333
                            });
                      },
                      child: const Text("提交"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
