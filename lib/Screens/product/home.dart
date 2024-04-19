import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(
        // child: Container(
        //   color: Colors.blue,
        //   child: ListView(
        //     children: [
        //       SizedBox(
        //         height: 200,
        //         width: 100,
        //         child: DrawerHeader(
        //           padding: const EdgeInsets.all(0.0),
        //           child: Container(
        //             decoration: BoxDecoration(color: Colors.orange[50]),
        //             child: const Center(
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                    Icon(
        //                     Icons.account_circle_outlined,
        //                     size: 100,
        //                     color: Colors.black,
        //                   ),
        //                   Text(
        //                       "Welcome",
        //                       style: TextStyle(
        //                           fontSize: 24, color: Colors.white))
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       // HOME
        //       ListTile(
        //         contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        //         leading: Icon(
        //           Icons.home_rounded,
        //           color: Colors.orange[50],
        //           size: 40,
        //         ),
        //         title: Text("Home",
        //             style: TextStyle(fontSize: 25, color: Colors.orange[50])),
        //         onTap: () {
        //           Navigator.of(context).push(MaterialPageRoute(
        //               builder: (context) => const HomePage()));
        //         },
        //       ),
        //       // PROFILE
        //       ListTile(
        //         contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        //         leading: Icon(
        //           Icons.account_circle_outlined,
        //           color: Colors.orange[200]?.withOpacity(0.5),
        //           size: 40,
        //         ),
        //         title: Text("Profile",
        //             style: TextStyle(
        //                 fontSize: 25, color: Colors.orange[200]?.withOpacity(0.5))),
        //         onTap: () {
        //           Navigator.of(context).push(MaterialPageRoute(
        //               builder: (context) => const HomePage()));
        //         },
        //       ),
        //       // STORE
        //       ListTile(
        //         contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        //         leading: Icon(
        //           Icons.shopping_bag_outlined,
        //           color: Colors.orange[200]?.withOpacity(0.5),
        //           size: 40,
        //         ),
        //         title: Text("Store",
        //             style: TextStyle(
        //                 fontSize: 25, color: Colors.orange[200]?.withOpacity(0.5))),
        //         onTap: () {
        //           Navigator.of(context).push(MaterialPageRoute(
        //               builder: (context) => const HomePage()));
        //         },
        //       ),
        //     ],
        //   ),
        // ),
      
      ),
      body: Center(child: Text("< H O M E    P A G E>")),
    );
  }
}