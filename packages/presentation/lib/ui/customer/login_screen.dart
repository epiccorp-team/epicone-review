import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:presentation/controller/user_controller.dart';
import 'package:presentation/router/app_pages.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final UserController _loginController = UserController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('로그인해 주세요'),
                TextButton(
                  onPressed: () {
                    _loginController.login(
                      onSuccess: () {
                        Get.back(result: true);
                      },
                      onError: (message) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('로그인 실패'),
                                content: SizedBox(
                                  width: 200,
                                  child: Text(message),
                                ),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                actionsAlignment: MainAxisAlignment.center,
                                actions: [
                                  Container(
                                    width: 200,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextButton(
                                      child: const Text(
                                        '확인',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                    );
                  },
                  child: Container(
                      width: 100,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ]),
        ),
      ),
    );
  }
}
