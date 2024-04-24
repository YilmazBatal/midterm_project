import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:midterm_project/Screens/widgets/bottom_menu.dart';
import 'package:midterm_project/main.dart';

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
              const SizedBox(height: 30,),
            const Text("Payment", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            // kartlar
            SizedBox(
              height: 300,
              child: PageView(
                controller: PageController(viewportFraction: 0.40),
                
                // pageSnapping: false,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black45)
                        ),
                        height: 150,
                        width: 150,
                        child: const Icon(Icons.add_rounded, color: Colors.black45,)
                      ),
                    ),
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        color: const Color.fromARGB(255, 30, 30, 30), 
                        height: 200,
                        width: 150,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Credit Card", style: TextStyle(color: Colors.white),),
                              Text("**** 1357", style: TextStyle(color: Colors.white),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/c/c2/Troy-logo-sloganli.png", scale: 40)),
                                  Text("08/29", style: TextStyle(color: Colors.white, fontSize: 14))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        color: const Color.fromARGB(255, 23, 14, 124), 
                        height: 200,
                        width: 150,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Credit Card", style: TextStyle(color: Colors.white),),
                              Text("**** 1357", style: TextStyle(color: Colors.white),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/1024px-Visa_Inc._logo.svg.png", scale: 24)),
                                  Text("08/29", style: TextStyle(color: Colors.white, fontSize: 14))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        color: const Color.fromARGB(255, 30, 30, 30), 
                        height: 200,
                        width: 150,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Credit Card", style: TextStyle(color: Colors.white),),
                              Text("**** 1357", style: TextStyle(color: Colors.white),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/c/c2/Troy-logo-sloganli.png", scale: 40)),
                                  Text("08/29", style: TextStyle(color: Colors.white, fontSize: 14))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            
            const Text("We Accept",),
            const Row(
              children: [
                Image(
                  width: 75,
                  image: NetworkImage("https://cdn.vox-cdn.com/thumbor/FtAV-Waa1rTPheAkxv3o4i0MVf0=/0x0:1000x1000/1200x800/filters:focal(421x430:581x590)/cdn.vox-cdn.com/uploads/chorus_image/image/62800797/Mastercard_logo.0.jpg"),
                ),
                SizedBox(width: 20,),
                Image(
                  width: 50,
                  image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/2/25/Troy_logo.png"),
                ),
                SizedBox(width: 20,),
                Image(
                  width: 50,
                  image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Old_Visa_Logo.svg/2560px-Old_Visa_Logo.svg.png"),
                )
              ],
            ),
            const SizedBox(height: 50,),
            const Divider(),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sub Total", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
                  Text("\$79", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
                ],
            ),
            const SizedBox(height: 10,),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shipping", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
                  Text("Free", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
                ],
            ),
            const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  Text("\$79", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ],
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
            ),
            
          ],
        ),
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}