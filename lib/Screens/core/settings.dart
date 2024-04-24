import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midterm_project/bloc/client/client_cubit.dart';
import 'package:midterm_project/bloc/client/client_state.dart';

import 'localizations.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientCubit, ClientState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context).getTranslate("settings"),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context).getTranslate("language"),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: state.language == "en"
                          ? null
                          : () {
                              context
                                  .read<ClientCubit>()
                                  .changeLanguage(language: "en");
                            },
                      child: const Text("English"),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: state.language == "tr"
                          ? null
                          : () {
                              context
                                  .read<ClientCubit>()
                                  .changeLanguage(language: "tr");
                            },
                      child: const Text("Turkçe"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context).getTranslate("theme"),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SwitchListTile(
                  title: Text(
                      AppLocalizations.of(context).getTranslate("dark_mode")),
                  value: state.darkMode,
                  onChanged: (bool value) {
                    context.read<ClientCubit>().changeDarkMode(darkMode: value);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
