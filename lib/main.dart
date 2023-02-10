import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final surahCount = List.generate(114, (index) => index);
  List<dynamic> all = [];
  String ayatOfPage = '';
  int pageNo = 1;
  getData() async {
    String temp = await rootBundle.loadString('assets/hafs_smart_v8.json');
    all = jsonDecode(temp) as List;
    for (var item in all) {
      if (item['page'] == pageNo) {
        ayatOfPage += '${item['aya_text_emlaey']} ${item['aya_no']} ';
      }
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: 604,
          itemBuilder: (context, index) {
            return RichText(
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              text: TextSpan(
                text: '',
                style: TextStyle(color: Colors.black, fontSize: 21),
                children: [TextSpan(text: ' ${ayatOfPage}')],
              ),
            );
          },
        ),
      ),
    );
  }
}
