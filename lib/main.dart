import 'package:card_collector/providers/card_provider.dart';
import 'package:card_collector/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CardsProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Card Collector Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color.fromARGB(255, 221, 237, 250),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
