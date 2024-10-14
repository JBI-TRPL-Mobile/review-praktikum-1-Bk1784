import 'package:flutter/material.dart';
import 'package:template_project/DetailBukuPage.dart';
import 'package:template_project/buku.dart';
import 'package:template_project/home.dart';


void main() {
  runApp(MaterialApp(
    home: ListPage(),
    routes: {
      '/detail': (context) => Detailbukupage(
            buku: ModalRoute.of(context)!.settings.arguments as Buku,
          ), // Named route untuk detail
    },
  ));
}

