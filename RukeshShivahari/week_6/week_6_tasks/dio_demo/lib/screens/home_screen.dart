import 'package:dio_demo/features/post/widgets/post_list_future_builder_widget.dart';
import 'package:dio_demo/features/post/widgets/shared/base_post_button_widget.dart';
import 'package:dio_demo/utils/global_instances.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: PostListWidget(),
        child: Column(
          spacing: 10,
          children: [
            Expanded(child: PostListFutureBuilderWidget()),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              children: [
                BasePostButtonWidget(
                  name: 'Post',
                  handlePostAction:
                      postApiService.createPostService,
                ),
                BasePostButtonWidget(
                  name: 'Update',
                  handlePostAction:
                      postApiService.updatePostService,
                ),
                BasePostButtonWidget(
                  name: 'Delete',
                  handlePostAction:
                      postApiService.deletePostService,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
