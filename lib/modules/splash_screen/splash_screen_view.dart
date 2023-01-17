import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'splash_screen_provider.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Consumer<SplashScreenProvider>(
            builder: (context, provider, child) {
              return Text(provider.counterValue.toString());
            },
          ), //its a way to show data using consumer

          Text(
            context.watch<SplashScreenProvider>().counterValue.toString(),
          ), //its another way to show data using watch

          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<SplashScreenProvider>().increment();
                },
                child: Text("Increment"),
              ),

              ElevatedButton(
                onPressed: () {
                  context.read<SplashScreenProvider>().decrement();
                },
                child: Text("Decrement"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}