import 'package:flutter/material.dart';

void main() {
  runApp(const LotteryApp());
}

class LotteryApp extends StatelessWidget {
  const LotteryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '台灣樂透號碼產生器',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF0F2744),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("台灣樂透號碼產生器"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Text("💰"),
              title: Text("威力彩"),
              subtitle: Text("01~38 選6個 + 01~08 選1個"),
            ),
          ),

          SizedBox(height: 12),

          Card(
            child: ListTile(
              leading: Text("🍀"),
              title: Text("大樂透"),
              subtitle: Text("01~49 選6個"),
            ),
          ),

          SizedBox(height: 12),

          Card(
            child: ListTile(
              leading: Text("⭐"),
              title: Text("今彩539"),
              subtitle: Text("01~39 選5個"),
            ),
          ),

          SizedBox(height: 12),

          Card(
            child: ListTile(
              leading: Text("🎯"),
              title: Text("四星彩"),
              subtitle: Text("0000~9999"),
            ),
          ),
        ],
      ),
    );
  }
}
