// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// void main() async {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Quran App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final surahCount = List.generate(114, (index) => index);
//   List<dynamic> all = [];
//   int pageNo = 1;
//   String ayatOfPage = '';
//   getData() async {
//     String temp = await rootBundle.loadString('assets/hafs_smart_v8.json');
//     all = jsonDecode(temp) as List;
//     for (var item in all) {
//       if (item['page'] == pageNo) {
//         ayatOfPage += item['aya_text_emlaey'];
//         pageNo++;
//       }
//     }
//     setState(() {});
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: ListView.builder(
//             padding: EdgeInsets.all(8),
//             itemCount: 114,
//             itemBuilder: (context, index) {
//               for (var item in all) {
//                 return RichText(
//                   textAlign: TextAlign.justify,
//                   textDirection: TextDirection.rtl,
//                   text: TextSpan(
//                     text: ' ',
//                     style: TextStyle(fontSize: 21, color: Colors.black),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text:
//                         '${all[index]['aya_text_emlaey']} ${all[index]['aya_no']}',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 );
//               }
//               return SizedBox();
//             }),
//       ),
//     );
//   }
// }
