import 'package:flutter/material.dart';
import 'package:json_data/jsonParsing/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.1,
        title: Text('JsonData Example'),
      ),
      body: ListView.builder(
        itemCount: homeProvider.jsonDataList.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
              backgroundImage:
                  NetworkImage('${homeProvider.jsonDataList[index].url}')),
          title: Text('${homeProvider.jsonDataList[index].title}'),
        ),
      ),
    );
  }
}
