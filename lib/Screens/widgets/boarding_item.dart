import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoardingItem extends StatelessWidget {
  final String image;
  final String title;

  const BoardingItem({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical:  8.0, horizontal: 16),
                child: Text(title,
                    style: const TextStyle(fontSize: 32,), textAlign: TextAlign.center,),
              ),
              // ElevatedButton(
              //   onPressed: () => GoRouter.of(context).push("/home"),
              //   style: ButtonStyle(
              //     shape: MaterialStateProperty.all(const CircleBorder()),
              //     padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              //     foregroundColor: MaterialStateProperty.all(Colors.white),
              //     backgroundColor: MaterialStateProperty.all(
              //         Colors.black87), // <-- Button color
              //     overlayColor:
              //         MaterialStateProperty.resolveWith<Color?>((states) {
              //       if (states.contains(MaterialState.pressed)) {
              //         return Colors.black54;
              //       }
              //       return null; // <-- Splash color
              //     }),
              //   ),
              //   child: const Icon(Icons.arrow_right_alt_rounded),
              // )
            
            ],
          ),
          // ignore: avoid_unnecessary_containers
          Padding(
            padding: const EdgeInsets.only(bottom:100.0),
            child: Image(
              width: double.infinity,
              fit: BoxFit.fill,
              image: NetworkImage(
                image,
              )
            ),
          )
        ],
      ),
    );
  }
} 