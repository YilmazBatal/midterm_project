import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:midterm_project/Screens/core/storage.dart';
import 'package:midterm_project/Screens/widgets/boarding_item.dart';
import 'package:preload_page_view/preload_page_view.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int page = 0;

  final boardingData = [
    {
      "image" : "https://cdn-icons-png.flaticon.com/256/7356/7356877.png",
      "title" : "NEW WINTER 2024 COLLECTION IS OUT!"
    },
    {
      "image" : "https://cdn-icons-png.flaticon.com/256/7356/7356885.png",
      "title": "TRY OUR SUMMER 2023 OUTLET COLLECTION NOW!"
    },
    {
      "image" : "https://cdn-icons-png.flaticon.com/256/7356/7356883.png",
      "title": "LOREM IPSUM DOLAR SIT AMET!!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () async {
                final storage = Storage();
                storage.firstLaunched();
                await storage.firstLaunched();
                // ignore: use_build_context_synchronously
                GoRouter.of(context).replace("/signin");
              },
              child: page == 2 ? const Text("Done") : const Text("Skip"),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: PreloadPageView.builder(
          onPageChanged: (value) {
            setState(() {
              page = value;
            });
          },
          itemCount: boardingData.length,
          itemBuilder: (context, index) => BoardingItem(
            image: boardingData[index]["image"]!,
            title: boardingData[index]["title"]!
            ),
        )
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(page == 0 ? Icons.circle : Icons.circle_outlined),
            Icon(page == 1 ? Icons.circle : Icons.circle_outlined),
            Icon(page == 2 ? Icons.circle : Icons.circle_outlined),
          ],
        ),
      ),
    );
  }
}
