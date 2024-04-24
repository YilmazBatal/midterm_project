import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/localizations.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({Key? key}) : super(key: key);

  @override
  _CreateNewPasswordPageState createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).getTranslate("create_new_password")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context).getTranslate("create_new_password"),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            Text(AppLocalizations.of(context).getTranslate("enter_new_pass")),
            const SizedBox(height: 40),
            buildTextField(AppLocalizations.of(context).getTranslate("new_password"),
              newPasswordController,
              AppLocalizations.of(context).getTranslate("enter_new_pass"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            buildTextField(AppLocalizations.of(context).getTranslate("confirm_password"),
              confirmPasswordController,
              AppLocalizations.of(context).getTranslate("confirm_new_pass"),
              obscureText: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  _createNewPassword(context);
                },
                icon: const Icon(Icons.arrow_circle_right),
                color: Colors.blue,
                iconSize: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
    String labelText,
    TextEditingController controller,
    String hintText, {
    bool obscureText = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 250, 248, 248),
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: (value) {
              // Handle text field changes
            },
          ),
        ),
      ],
    );
  }

  void _createNewPassword(BuildContext context) async {
    String newPassword = newPasswordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (newPassword == confirmPassword) {
      try {
        // Yeni şifreler eşleşirse, SharedPreferences üzerinden şifreyi güncelle
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('password', newPassword);

        // Şifre oluşturma işlemi başarılı olursa kullanıcıya mesaj göster
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context).getTranslate("set_new_pass"))),
        );
        Navigator.of(context).pushNamed('/login');
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(content: Text(AppLocalizations.of(context).getTranslate("error_pass"))),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context).getTranslate("set_new_pass"))),
      );
    }
  }
}
