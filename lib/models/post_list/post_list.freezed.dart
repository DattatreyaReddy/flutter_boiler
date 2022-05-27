// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostList _$PostListFromJson(Map<String, dynamic> json) {
  return _PostList.fromJson(json);
}

/// @nodoc
mixin _$PostList {
  List<Post>? get posts => throw _privateConstructorUsedError;
  set posts(List<Post>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostListCopyWith<PostList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListCopyWith<$Res> {
  factory $PostListCopyWith(PostList value, $Res Function(PostList) then) =
      _$PostListCopyWithImpl<$Res>;
  $Res call({List<Post>? posts});
}

/// @nodoc
class _$PostListCopyWithImpl<$Res> implements $PostListCopyWith<$Res> {
  _$PostListCopyWithImpl(this._value, this._then);

  final PostList _value;
  // ignore: unused_field
  final $Res Function(PostList) _then;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PostListCopyWith<$Res> implements $PostListCopyWith<$Res> {
  factory _$$_PostListCopyWith(
          _$_PostList value, $Res Function(_$_PostList) then) =
      __$$_PostListCopyWithImpl<$Res>;
  @override
  $Res call({List<Post>? posts});
}

/// @nodoc
class __$$_PostListCopyWithImpl<$Res> extends _$PostListCopyWithImpl<$Res>
    implements _$$_PostListCopyWith<$Res> {
  __$$_PostListCopyWithImpl(
      _$_PostList _value, $Res Function(_$_PostList) _then)
      : super(_value, (v) => _then(v as _$_PostList));

  @override
  _$_PostList get _value => super._value as _$_PostList;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$_PostList(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostList implements _PostList {
  _$_PostList({this.posts});

  factory _$_PostList.fromJson(Map<String, dynamic> json) =>
      _$$_PostListFromJson(json);

  @override
  List<Post>? posts;

  @override
  String toString() {
    return 'PostList(posts: $posts)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_PostListCopyWith<_$_PostList> get copyWith =>
      __$$_PostListCopyWithImpl<_$_PostList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostListToJson(this);
  }
}

abstract class _PostList implements PostList {
  factory _PostList({List<Post>? posts}) = _$_PostList;

  factory _PostList.fromJson(Map<String, dynamic> json) = _$_PostList.fromJson;

  @override
  List<Post>? get posts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostListCopyWith<_$_PostList> get copyWith =>
      throw _privateConstructorUsedError;
}
