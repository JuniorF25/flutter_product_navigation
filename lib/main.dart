import 'package:flutter/material.dart';
import 'presentation/pages/product_list_page.dart';
import 'presentation/pages/product_detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productos',
      initialRoute: '/',
      routes: {
        '/': (context) => ProductListPage(),
        '/detail': (context) => ProductDetailPage(),
      },
    );
  }
}
