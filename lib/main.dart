import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midterm_project/Screens/core/routes.dart';
import 'package:midterm_project/bloc/client/client_cubit.dart';
import 'package:midterm_project/bloc/client/client_state.dart';
import 'package:midterm_project/Screens/core/localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ClientCubit(ClientState(language: "en", darkMode: false)),
      child: BlocBuilder<ClientCubit, ClientState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('tr', 'TR'),
            ],
            theme: ThemeData(
              textTheme: GoogleFonts.montserratTextTheme(
                Theme.of(context).textTheme,
              ),
            ),
            locale: Locale(state.language),
          );
        },
      ),
    );
  }
}
