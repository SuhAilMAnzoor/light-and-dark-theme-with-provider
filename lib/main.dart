import 'package:flutter/material.dart';
import 'package:light_and_dark_theme_with_provider/provider/theme_changer_provider.dart';
import 'package:provider/provider.dart';
import 'package:light_and_dark_theme_with_provider/screens/light_and_dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(),
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.red,
              appBarTheme: AppBarTheme(backgroundColor: Colors.red),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.yellow,
              primaryColor: Colors.purple,
              appBarTheme: AppBarTheme(backgroundColor: Colors.teal),
              iconTheme: IconThemeData(color: Colors.pink),
            ),

            home: const LightAndDarkThemeScreen(),
          );
        },
      ),
    );
  }
}
