import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_full_learn/202/service/comment_model.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

abstract class IServices {
  Future<List<PostModel>?> fetchPostItemsAdvanced();
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItemToService(PostModel postModel, int id);
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

class Services implements IServices {
  final Dio _dio;
  Services()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<List<PostModel>?> fetchPostItemsAdvanced() async {
    try {
      final response = await _dio.get(_ServicePath.posts.name);

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _showDebug().showDioError(exception, this);
    }
    return null;
  }

  Future<bool> addItemToService(PostModel postModel) async {
    try {
      final response =
          await _dio.post(_ServicePath.posts.name, data: postModel);

      return response.statusCode == HttpStatus.created;
    } on DioError catch (exception) {
      _showDebug().showDioError(exception, this);
    }
    return false;
  }

  Future<bool> putItemToService(PostModel postModel, int id) async {
    try {
      final response =
          await _dio.put('${_ServicePath.posts.name}/$id', data: postModel);

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (exception) {
      _showDebug().showDioError(exception, this);
    }
    return false;
  }

  Future<bool> deleteItemToService(PostModel postModel, int id) async {
    try {
      final response = await _dio.delete('${_ServicePath.posts.name}/$id');

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (exception) {
      _showDebug().showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    try {
      final response = await _dio.get(_ServicePath.comments.name,
          queryParameters: {_ServiceQueryPaths.postId.name: postId});

      if (response.statusCode == HttpStatus.ok) {
        var _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      } else {
        return null;
      }
    } on DioError catch (exception) {
      _showDebug().showDioError(exception, this);
    }
    return null;
  }
}

class _showDebug {
  void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error);
    }
  }
}

enum _ServicePath {
  posts,
  comments,
}

enum _ServiceQueryPaths { postId }
