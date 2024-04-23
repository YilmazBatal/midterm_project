import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:midterm_project/Screens/widgets/bottom_menu.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  final cart = 78;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 32),
        backgroundColor: Colors.transparent,
        title: const Text("Cart"),
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
        
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image(
                        image: NetworkImage("https://media.gettyimages.com/id/930666562/vector/sunglasses-icon-flat.jpg?s=612x612&w=gi&k=20&c=aJwCq9kTHtRAtpPl_gK-2hswJPuLxMhV3T9ijehG57Y="),
                        height: 165,
                        width: 165,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Bosk Sunglasses"),
                          const Text("\$39", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: ElevatedButton(
                                  
                                  style: ButtonStyle(
                                    padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
                                    foregroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 31, 31, 31)),
                                    backgroundColor: const MaterialStatePropertyAll(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0),
                                        side: const BorderSide()
                                      )
                                    )
                                  ),
                                  onPressed: () {},
                                  child: const Text("-"),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("1"),
                              ),
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: ElevatedButton(
                                  
                                  style: ButtonStyle(
                                    padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
                                    foregroundColor: const MaterialStatePropertyAll(Colors.white),
                                    backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 31, 31, 31)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0),
                                        side: const BorderSide()
                                      )
                                    )
                                  ),
                                  onPressed: () {},
                                  child: const Text("+"),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image(
                        image: NetworkImage("https://media.gettyimages.com/id/930666562/vector/sunglasses-icon-flat.jpg?s=612x612&w=gi&k=20&c=aJwCq9kTHtRAtpPl_gK-2hswJPuLxMhV3T9ijehG57Y="),
                        height: 165,
                        width: 165,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Bosk Sunglasses"),
                          const Text("\$39", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: ElevatedButton(
                                  
                                  style: ButtonStyle(
                                    padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
                                    foregroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 31, 31, 31)),
                                    backgroundColor: const MaterialStatePropertyAll(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0),
                                        side: const BorderSide()
                                      )
                                    )
                                  ),
                                  onPressed: () {},
                                  child: const Text("-"),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("1"),
                              ),
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: ElevatedButton(
                                  
                                  style: ButtonStyle(
                                    padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
                                    foregroundColor: const MaterialStatePropertyAll(Colors.white),
                                    backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 31, 31, 31)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0),
                                        side: const BorderSide()
                                      )
                                    )
                                  ),
                                  onPressed: () {},
                                  child: const Text("+"),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
        
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Total", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  Text("\$$cart", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ],
              ),
              const SizedBox(height: 75),
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
                    GoRouter.of(context).push("/address");
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Address"),
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
