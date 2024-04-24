import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:midterm_project/Screens/client/sign_in.dart';

import '../core/localizations.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context).getTranslate("create_account"),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              buildTextField(AppLocalizations.of(context).getTranslate("username"), usernameController, "arda_sargin"),
              const SizedBox(height: 20),
              buildTextField(AppLocalizations.of(context).getTranslate("phone"), phonenumberController, "+905426557725"),
              const SizedBox(height: 20),
              buildTextField(AppLocalizations.of(context).getTranslate("mail"), emailController, "arda@gmail.com"),
              const SizedBox(height: 20),
              buildTextField(AppLocalizations.of(context).getTranslate("password"), passwordController, "*********",
                  obscureText: true),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push("/signin");
                    },
                    child: Text(AppLocalizations.of(context).getTranslate("login"),
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      if (_validateForm()) {
                        bool success = await saveUserCredentials(
                          usernameController.text,
                          phonenumberController.text,
                          emailController.text,
                          passwordController.text,
                        );

                        if (success) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(AppLocalizations.of(context).getTranslate("success")),
                                content: Text(AppLocalizations.of(context).getTranslate("signup_success"),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SignInPage(),
                                        ),
                                      );
                                    },
                                    child: Text(AppLocalizations.of(context).getTranslate("ok")),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(AppLocalizations.of(context).getTranslate("error")),
                                content: Text(AppLocalizations.of(context).getTranslate("failed"),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(AppLocalizations.of(context).getTranslate("ok")),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.arrow_circle_right),
                    color: Colors.blue,
                    iconSize: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, TextEditingController controller, String hintText,
      {bool obscureText = false}) {
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

  bool _validateForm() {
    if (usernameController.text.isEmpty ||
        phonenumberController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      _showErrorMessage(AppLocalizations.of(context).getTranslate("required"));
      return false;
    } else if (!emailController.text.contains('@')) {
      _showErrorMessage(AppLocalizations.of(context).getTranslate("invalid_mail"));
      return false;
    } else if (!phonenumberController.text.contains('+90')) {
      _showErrorMessage(AppLocalizations.of(context).getTranslate("invalid_phone"));
      return false;
    } else if (passwordController.text.length < 9) {
      _showErrorMessage(AppLocalizations.of(context).getTranslate("password_characters"));
      return false;
    }
    return true;
  }

  void _showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context).getTranslate("error")),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(AppLocalizations.of(context).getTranslate("ok")),
            ),
          ],
        );
      },
    );
  }

  Future<bool> saveUserCredentials(
    String username,
    String phonenumber,
    String email,
    String password,
  ) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('username', username);
      prefs.setString('phonenumber', phonenumber);
      prefs.setString('email', email);
      prefs.setString('password', password);
      return true;
    } catch (e) {
      print('Failed to save user credentials: $e');
      return false;
    }
  }
}
