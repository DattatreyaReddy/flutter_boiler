import 'package:freezed_annotation/freezed_annotation.dart';

import '../post/post.dart';

part 'post_list.freezed.dart';
part 'post_list.g.dart';

@unfreezed
class PostList with _$PostList {

  factory PostList({
    List<Post>? posts,
  }) = _PostList;

  factory PostList.fromJson(Map<String, dynamic> json) => _$PostListFromJson(json);
}