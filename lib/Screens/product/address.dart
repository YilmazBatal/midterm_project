import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:midterm_project/Screens/widgets/bottom_menu.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 32),
        backgroundColor: Colors.transparent,
        title: const Text("Address"),
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
                    Icon(Icons.circle, size: 32,),
                    SizedBox(width: 20,),
                    Icon(Icons.circle, size: 32, color: Color.fromRGBO(0, 0, 0, 0.10),),
                    SizedBox(width: 20,),
                    Icon(Icons.circle, size: 32, color: Color.fromRGBO(0, 0, 0, 0.10),),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Address", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ],
              ),
              
              const SizedBox(height: 15),
        
              const Text("Name", style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
              const MyInput(),
              const SizedBox(height: 15),
              const Text("Phone Number", style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
              const MyInput(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("City", style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3 - 20,
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 236, 239, 250),
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          onChanged: (value) {
                            // Handle username changes
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("State", style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3 - 20,
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 236, 239, 250),
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          onChanged: (value) {
                            // Handle username changes
                          },
                        ),
                      ),
                    ],
                  ),               
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Zip Code", style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3 - 20,
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 236, 239, 250),
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          onChanged: (value) {
                            // Handle username changes
                          },
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
              const SizedBox(height: 15),
              GestureDetector(
                child: const Row(
                  children: [
                    Icon(Icons.radio_button_checked_rounded),
                    Text("Save as favorite", style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
                  ],
                ),
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
                      GoRouter.of(context).push("/payment");
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment"),
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

class MyInput extends StatelessWidget {
  const MyInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 236, 239, 250),
          hintText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value) {
          // Handle username changes
        },
      ),
    );
  }
}