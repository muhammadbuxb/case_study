import 'package:case_study/Controller/language_controller.dart';
import 'package:case_study/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageController()),
      ],
      child: Consumer<LanguageController>(
        builder: (context, provider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: provider.appLocale,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale("en"),
              Locale("ar"),
            ],
            title: 'Case Study',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
