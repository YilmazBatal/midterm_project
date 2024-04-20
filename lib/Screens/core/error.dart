import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("< E R R O R  -  404 >"),
              const SizedBox(height: 20),
              IconButton(
                onPressed: () => GoRouter.of(context).pop(),
                icon: const Icon(Icons.arrow_back_rounded))
            ],
          ),
        ),
      ),
    );
  }
}