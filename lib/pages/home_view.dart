import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school/provider/home_provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: TextField(
                textAlign: TextAlign.center,
                autocorrect: true,
                autofocus: true,
                expands: false,
                onChanged: (vel) {
                  provider.onCh(vel);
                },
                cursorColor: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
