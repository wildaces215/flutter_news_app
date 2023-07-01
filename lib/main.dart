import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rss_feed/screens/container.dart';

import 'controller/xml_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 19, 242, 26)),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider(
            create: (_) => XMLHandler(), child: HomeContainer()));
  }
}
