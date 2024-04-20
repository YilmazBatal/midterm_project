import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
      body: Center(
        child: Text("< S E T T I N G S>"),
      ),
    );
  }
}