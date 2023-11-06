import 'package:flutter/material.dart';

import '../../core/core.dart';
import 'login_page.dart';

abstract class LoginPageViewModel extends State<LoginPage> {
  TextEditingController cpfcontroller = TextEditingController(text: "");
  TextEditingController passwordcontroller = TextEditingController(text: "");
  bool isPasswordVisible = false;
  bool isCheck = true;

  @override
  void initState() {
    super.initState();

/*
    setState(() {
      cpfcontroller.text =
          StorageManager.instance.getString(Storage.instance.userLoginKey) ??
              '';
      passwordcontroller.text =
          StorageManager.instance.getString(Storage.instance.userPasswordKey) ??
              '';
    });

    */
  }

  @override
  void dispose() {
    super.dispose();
  }

  void setPersistedLogin(String login, String password) {
    if (isCheck == true) {
      StorageManager.instance.setString(Storage.instance.userLoginKey, login);
      StorageManager.instance
          .setString(Storage.instance.userPasswordKey, password);
    } else {
      StorageManager.instance.setString(Storage.instance.userLoginKey, '');
      StorageManager.instance.setString(Storage.instance.userPasswordKey, '');
    }
  }
}
