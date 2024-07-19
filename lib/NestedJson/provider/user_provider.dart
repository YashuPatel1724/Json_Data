import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_data/NestedJson/modal/user_modal.dart';

class UserProvider extends ChangeNotifier
{
  List<UserModal> userData = [];
  Future<void> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/json/user.json');
    List users = jsonDecode(json);

    userData = users.map((e) => UserModal.fromjson(e),).toList();
    notifyListeners();
  }

   UserProvider()
   {
     jsonParsing();
   }
}