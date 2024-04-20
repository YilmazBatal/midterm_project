// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:midterm_project/Screens/core/storage.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
 
  loadApp() async {
    final storage = Storage();

    final firstLaunch = await storage.isFirstLaunch();

    if (firstLaunch) {
      // tanıtım
      GoRouter.of(context).replace("/welcome");
    } else {
      // home screen
      GoRouter.of(context).replace("/home");
    }
  }
  
  @override
  void initState() {
    super.initState();
    loadApp();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}