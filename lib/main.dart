import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:manhattan_gold_coin_wallt/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    // Handle initialization errors here
    print('Error initializing Firebase: $e');
  }
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ManhattanGoldCoin Wallet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

