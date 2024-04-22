import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/bottom_menu.dart';
import 'product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  final _productsList = [
    {
      "image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx9DY6c2ri7CHo47p_4HnS2ttME0tuyvB-WNlQSxI1oZVhphYfvPAZfbnG8XVd_2a_uts&usqp=CAU",
      "title" : "Glasses",
      "price" : "19.99",
    },
    {
      "image" : "https://www.teokimya.com/wp-content/uploads/2019/06/tshirt-2.jpg",
      "title" : "T-shirt",
      "price" : "9.99",
    },
    {
      "image" : "https://www.teokimya.com/wp-content/uploads/2019/06/tshirt-2.jpg",
      "title" : "T-shirt ",
      "price" : "9.99",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 32),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/deneme.png'),
            ),
            onPressed: () {
              //profil simgesine tıklanınca yapılacak işlem
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange[100],
              ),
              child: const Row(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(' Home '),
              onTap: () {
                GoRouter.of(context).push("/Home");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' Profile '),
              onTap: () {
                GoRouter.of(context).push("/not-in-design");
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text(' Favorites '),
              onTap: () {
                GoRouter.of(context).push("/not-in-design");
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                GoRouter.of(context).push("/not-in-design");
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(' Settings '),
              onTap: () {
                GoRouter.of(context).push("/settings");
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(' LogOut '),
              onTap: () {
                GoRouter.of(context).push("/not-in-design");
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 5),
                Text(
                  "<NAME>",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 280,
                  height: 50,
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 250, 248, 248),
                        hintText: 'Arama yapın...',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 250, 248, 248),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.tune),
                        color: Colors.grey,
                        onPressed: () {
                          // Filtreleme simgesine tıklayınca yapılacaklar
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            Container(
              width: 330,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Köşe yarıçapı
                child: Image.network(
                  "https://cdn2.enuygun.com/media/lib/825x620/uploads/image/galata-kulesi-14934.webp",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textButton("Accessories", "100"),
                    textButton("Clothing", "245"),
                    textButton("Shoes", "175"),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 5),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _productsList.length,
                itemBuilder:(context, index) {
                  return ProductCard(
                    imageUrl: _productsList[index]["image"]!,
                    title: _productsList[index]["title"]!,
                    price: _productsList[index]["price"]!
                  );
                },
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }

  InkWell textButton(String name, String stock) {
    return InkWell(
      onTap: () {
        // Butona tıklandığında yapılacak işlemler
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            width: 120,
            height: 50,
            color: Colors.transparent,
            child: Center(
                child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Positioned(
            top: 4,
            right: 4,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                stock,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
