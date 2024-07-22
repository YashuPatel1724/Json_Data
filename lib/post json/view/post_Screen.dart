import 'package:flutter/material.dart';
import 'package:json_data/NestedJson/provider/user_provider.dart';
import 'package:json_data/post%20json/provider/post_provider.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
   PostProvider postProvider = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
      ),
      body: ListView.builder(itemCount: postProvider.postModal.posts.length,
        itemBuilder: (context, index) =>ListTile(
          title: Text('${postProvider.postModal.posts[index].title}'),
          subtitle: Text('${postProvider.postModal.posts[index].views}'),
          leading: Text('${postProvider.postModal.posts[index].id}'),
          trailing: Text('${postProvider.postModal.posts[index].reaction.likes}   ${postProvider.postModal.posts[index].reaction.dislikes}'),
        ),),
    );
  }
}
