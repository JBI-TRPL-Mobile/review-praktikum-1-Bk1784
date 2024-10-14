import 'package:flutter/material.dart';
import 'package:template_project/buku.dart';

class Detailbukupage extends StatelessWidget {
  final Buku buku;

  Detailbukupage({required this.buku});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Text("detail Buku"),
      )),
    );
  }
}
