import 'package:dio_demo/model/post_model.dart';
import 'package:dio_demo/utils/global_instances.dart';
import 'package:flutter/material.dart';

class PostListWidget extends StatefulWidget {
  const PostListWidget({super.key});

  @override
  State<PostListWidget> createState() =>
      _PostListWidgetState();
}

class _PostListWidgetState extends State<PostListWidget> {
  List<PostModel> response = [];

  void getAllPosts() async {
    final serviceResponse = await postApiService
        .getPostService();
    setState(() {
      response = serviceResponse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: response.isNotEmpty
          ? ListView.builder(
              itemCount: response.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      tileColor: const Color.fromARGB(
                        255,
                        213,
                        193,
                        122,
                      ),
                      title: Text(
                        response[index].title,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      leading: Text(
                        response[index].id.toString(),
                      ),
                      subtitle: Text(
                        response[index].body,
                        style: const TextStyle(
                          color: Color.fromARGB(
                            255,
                            2,
                            100,
                            180,
                          ),
                        ),
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            )
          : const CircularProgressIndicator(),
    );
  }

  @override
  void initState() {
    super.initState();
    getAllPosts();
  }
}
