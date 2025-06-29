import 'package:flutter/material.dart';
import 'package:flutter_always_on_top_linux/flutter_always_on_top_linux.dart';

void main() {
  runApp(const MyApp());

  WidgetsBinding.instance.addPostFrameCallback((_) {
    FlutterAlwaysOnTopLinux.setAlwaysOnTop(true);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Always On Top Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Always On Top Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              FlutterAlwaysOnTopLinux.setAlwaysOnTop(true);
            },
            child: const Text('Make Always On Top'),
          ),
        ),
      ),
    );
  }
}
