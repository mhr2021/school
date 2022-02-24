import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school/provider/home_provider.dart';
import 'package:school/pages/home_view.dart';


void main() => runApp(ChangeNotifierProvider(create: (BuildContext context) => HomeProvider(),
child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text(provider.text.toString()),
          ),
          body: HomePage()),
    );
  }
}
