import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/comment_model_learn_view.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';
import 'package:flutter_full_learn/202/service/services.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading = false;
  final _baseURL = 'https://jsonplaceholder.typicode.com';
  late final Dio _dio;

  late final IServices _services;
  @override
  void initState() {
    super.initState();

    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  //
  Future<void> fetchPostItemsAdvanced() async {
    _changeLoading();
    _items = await _services.fetchPostItemsAdvanced();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink(),
        ],
      ),
      body: _items == null
          ? Placeholder()
          : ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: _items?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return _GetPostsCard(model: _items?[index]);
              },
            ),
    );
  }
}

class _GetPostsCard extends StatelessWidget {
  const _GetPostsCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CommentLearnView(postId: _model?.id)));
        },
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
