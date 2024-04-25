import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:midterm_project/Screens/core/localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/bottom_menu.dart';
import 'product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? storedUsername;

  @override
  void initState() {
    super.initState();
    loadUsername();
  }

  Future<void> loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      storedUsername = prefs.getString('username');
    });
  }

  // ignore: unused_field
  final _productsList = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx9DY6c2ri7CHo47p_4HnS2ttME0tuyvB-WNlQSxI1oZVhphYfvPAZfbnG8XVd_2a_uts&usqp=CAU",
      "title": "Glasses",
      "price": "19.99",
    },
    {
      "image":
          "https://static.vecteezy.com/system/resources/thumbnails/020/294/027/small_2x/empty-yellow-t-shirt-template-free-vector.jpg",
      "title": "T-shirt",
      "price": "9.99",
    },
    {
      "image":
          "https://media.istockphoto.com/id/1318878952/vector/vector-realistic-t-shirt.jpg?s=612x612&w=0&k=20&c=uMO9WZk27CgfGvfM177p0j7WwxD0cnR_N3cAmMsYaeE=",
      "title": "T-shirt ",
      "price": "9.99",
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
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context).getTranslate("welcome_back"),
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text(AppLocalizations.of(context).getTranslate("home")),
              onTap: () {
                GoRouter.of(context).push("/Home");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(AppLocalizations.of(context).getTranslate("profile")),
              onTap: () {
                GoRouter.of(context).push("/not-in-design");
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title:
                  Text(AppLocalizations.of(context).getTranslate("favorites")),
              onTap: () {
                GoRouter.of(context).push("/not-in-design");
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: Text(AppLocalizations.of(context).getTranslate("premium")),
              onTap: () {
                GoRouter.of(context).push("/not-in-design");
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title:
                  Text(AppLocalizations.of(context).getTranslate("settings")),
              onTap: () {
                GoRouter.of(context).push("/settings");
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(AppLocalizations.of(context).getTranslate("logout")),
              onTap: () async {
                // await clearSharedPreferences();
                // Anasayfaya geri dön go routerda çalışmıyormuş
                // ignore: use_build_context_synchronously
                Navigator.of(context).popUntil(ModalRoute.withName('/signin'));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context).getTranslate("welcome"),
                  style: const TextStyle(fontSize: 30),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.left,
                  storedUsername != null ? "$storedUsername" : "<User>",
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 280,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 250, 248, 248),
                      hintText:
                          AppLocalizations.of(context).getTranslate("search"),
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
                  "https://images-ext-1.discordapp.net/external/qubV6AwXaVN3SYiTZlQSqsaLDTmllHMXUTPg8NKcc-E/https/png.pngtree.com/png-clipart/20220117/original/pngtree-big-sale-up-to-70-off-black-friday-social-media-banner-png-image_7129084.png?format=webp&quality=lossless&width=671&height=671",
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
                    textButton(
                        AppLocalizations.of(context)
                            .getTranslate("accessories"),
                        "100"),
                    textButton(
                        AppLocalizations.of(context).getTranslate("clothing"),
                        "245"),
                    textButton(
                        AppLocalizations.of(context).getTranslate("shoes"),
                        "175"),
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
                itemBuilder: (context, index) {
                  return ProductCard(
                      imageUrl: _productsList[index]["image"]!,
                      title: _productsList[index]["title"]!,
                      price: _productsList[index]["price"]!);
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

  Future<void> clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
