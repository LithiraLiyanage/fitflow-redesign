import 'package:flutter/material.dart';

void main() {
  runApp(const FitFlowApp());
}

class FitFlowApp extends StatelessWidget {
  const FitFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitFlow Redesign',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const FitFlowHomePage(),
    );
  }
}

class FitFlowHomePage extends StatelessWidget {
  const FitFlowHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FitFlow')),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FitFlow Redesign',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                'Starter shell for the cross-platform FitFlow experience. '
                'Production screens will implement adaptive workouts, nutrition, '
                'progress and private community flows defined in the HCI redesign.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
