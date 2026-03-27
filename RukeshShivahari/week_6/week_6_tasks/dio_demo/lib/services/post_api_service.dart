import 'package:dio/dio.dart';
import 'package:dio_demo/model/post_model.dart';

/// A service class that handles the http requests using [Dio];
class PostApiService {
  /// An instance of Dio class
  final Dio _dio = Dio();

  /// A base url for posts
  final String postBaseUrl =
      'https://jsonplaceholder.typicode.com/posts';

  /// A method of [PostApiService] that performs get request
  ///
  /// It returns the response from the given [postBaseUrl] url
  /// Response is of type [PostModel]
  Future<List<PostModel>> getPostService() async {
    try {
      final response = await _dio.get(postBaseUrl);

      if (response.statusCode == 200) {
        final List dataList = response.data;

        final List<PostModel> postLists = dataList
            .map<PostModel>(
              (data) => PostModel.fromJson(data),
            )
            .toList();

        return postLists;
      } else {
        throw Exception(
          'The posts are failing to load : ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Error when fetching all posts: $e');
    }
  }

  Future<void> createPostService() async {
    try {
      final response = await _dio.post(
        postBaseUrl,
        data: {
          'id': 2,
          'title': 'Bags',
          'body': 'This is bag',
        },
      );

      print(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updatePostService() async {
    try {
      final response = await _dio.put(
        '$postBaseUrl/1',
        data: {
          'id': 1,
          'title': 'Updated Title',
          'body': 'Updated Body',
        },
      );

      print(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deletePostService() async {
    try {
      final response = await _dio.delete('$postBaseUrl/1');

      print(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
