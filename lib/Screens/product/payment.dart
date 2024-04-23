import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:midterm_project/Screens/widgets/bottom_menu.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 32),
        backgroundColor: Colors.transparent,
        title: const Text("Payment"),
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
                    Icon(Icons.circle, size: 32, color: Color.fromRGBO(0, 0, 0, 0.10),),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Payment", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ],
              ),
              
              Image(
                image: NetworkImage("https://cdn.discordapp.com/attachments/766377136398794763/1232447833009950742/image.png?ex=66297dfd&is=66282c7d&hm=500f6396eb8b7be8198c590e11dd44edb695efed2275aef6b3be896448ad3d09&"),
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
                      GoRouter.of(context).push("/ordercomplete");
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Place Order"),
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