import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_data/post%20json/modal/post_modal.dart';

class PostProvider extends ChangeNotifier
{
  late PostModal postModal;

  Future<void> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/json/post.json');
    final posts = jsonDecode(json);
    postModal = PostModal.fromJson(posts);
    notifyListeners();
  }

  PostProvider()
  {
    jsonParsing();
  }
}