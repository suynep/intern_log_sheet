import 'package:dio_demo/model/post_model.dart';
import 'package:dio_demo/utils/global_instances.dart';
import 'package:flutter/material.dart';

class PostListFutureBuilderWidget extends StatelessWidget {
  PostListFutureBuilderWidget({super.key});

  final Future<List<PostModel>> response = postApiService
      .getPostService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: FutureBuilder<List<PostModel>>(
        future: response,
        builder: (context, snapshot) {
          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text(
                // 'Error: ${snapshot.error}',
                'Error: There is error when fetching post',
                style: TextStyle(color: Colors.red),
              ),
            );
          } else if (snapshot.hasData) {
            final posts = snapshot.data!;

            return ListView.separated(
              itemCount: posts.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final post = posts[index];

                return ListTile(
                  tileColor: const Color.fromARGB(
                    255,
                    213,
                    193,
                    122,
                  ),
                  leading: Text(post.id.toString()),
                  title: Text(
                    post.title,
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    post.body,
                    style: const TextStyle(
                      color: Color.fromARGB(
                        255,
                        2,
                        100,
                        180,
                      ),
                    ),
                  ),
                );
              },
            );
          }

          return const Center(child: Text('No data found'));
        },
      ),
    );
  }
}
