import 'dart:async';

import 'package:flutter_boiler/data/network/constants/endpoints.dart';
import 'package:flutter_boiler/data/network/dio_client.dart';

import '../../../../models/post_list/post_list.dart';

class PostApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  PostApi(this._dioClient);

  /// Returns list of post in response
  Future<PostList> getPosts() async {
    try {
      final resList = await _dioClient.get(Endpoints.getPosts);
      final res = {"posts" : resList};
      return PostList.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  /// sample api call with default rest client
//  Future<PostsList> getPosts() {
//
//    return _restClient
//        .get(Endpoints.getPosts)
//        .then((dynamic res) => PostsList.fromJson(res))
//        .catchError((error) => throw NetworkException(message: error));
//  }

}
