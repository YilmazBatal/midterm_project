import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:midterm_project/Screens/widgets/bottom_menu.dart';

class OrderCompletePage extends StatelessWidget {
  const OrderCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 32),
        backgroundColor: Colors.transparent,
        title: const Text("Order Complete"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.shopping_bag),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, size: 32),
                    SizedBox(width: 20,),
                    Icon(Icons.circle, size: 32),
                    SizedBox(width: 20,),
                    Icon(Icons.circle, size: 32),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Thank you", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ],
              ),
              const SizedBox(height: 30,),
              const Center(child: Icon(Icons.check_circle_outline_rounded, size: 128,)),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text("Order #125694845 successfully placed. It will be fulfilled and sent out in about 2-7 business days.", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
              ),
              const SizedBox(height: 100,),
              SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: const MaterialStatePropertyAll(Colors.white),
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 31, 31, 31)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide()
                        )
                      )
                    ),
                    onPressed: () {
                      GoRouter.of(context).push("/home");
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Back to Home"),
                        Icon(Icons.arrow_right_alt_rounded)
                      ],
                    ) 
                  ),
                )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}