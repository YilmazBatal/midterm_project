// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/foundation.dart';
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
    storage.storageClear();
    final firstLaunch = await storage.isFirstLaunch();

    if (firstLaunch) {
      // cihazin gece gunduz moduna erismek
      const darkMode = ThemeMode.system == ThemeMode.dark;
      // cihazin varsayilan diline erismek
      await storage.setConfig(
          language: getDeviceLanguage(), darkMode: darkMode);
      // tanıtım
      GoRouter.of(context).replace("/welcome");
    } else {
      // home screen
      GoRouter.of(context).replace("/home");
    }
  }

  getDeviceLanguage() {
    final String defaultLocale;
    if (!kIsWeb) {
      defaultLocale = Platform.localeName;
    } else {
      defaultLocale = "en";
    }
    final langParts = defaultLocale.split("_");
    final supportedLanguages = ["en", "tr"];

    final String finalLang;

    if (supportedLanguages.contains(langParts[0])) {
      finalLang = langParts[0];
    } else {
      finalLang = "en";
    }

    return finalLang;
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
