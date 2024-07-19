import 'package:flutter/material.dart';
import 'package:json_data/NestedJson/provider/user_provider.dart';
import 'package:json_data/NestedJson/view/user_page.dart';
import 'package:json_data/jsonParsing/provider/home_provider.dart';
import 'package:json_data/jsonParsing/view/screen/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(create: (context) => UserProvider(),)
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/user',
        routes: {
          '/': (context) => HomePage(),
          '/user' : (context) => UserPage(),
        },
      ),
    );
  }
}
