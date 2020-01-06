import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final Map arguments;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${arguments != null ? arguments['id'] : '0'}'),
      ),
      body: Text('search page content'),
    );
  }
}