import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Winter Collection 2024 Coming Soon", style: TextStyle(fontSize: 32)),
              ElevatedButton(
                onPressed: () => GoRouter.of(context).push("/signup"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const CircleBorder()),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.black87), // <-- Button color
                  overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                    if (states.contains(MaterialState.pressed)) return Colors.black54;
                    return null; // <-- Splash color
                  }),
                ),
                child: const Icon(Icons.arrow_right_alt_rounded),
              )
            ],
          ),
          // ignore: avoid_unnecessary_containers
          Container(child: const Image(image: NetworkImage("https://cdn.openart.ai/stable_diffusion/90106154ca838d12ec05e84edf4a015ed4ac593b_2000x2000.webp") ))
        ],
      ),
    );
  }
}