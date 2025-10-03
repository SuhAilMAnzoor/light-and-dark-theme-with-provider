import 'package:flutter/material.dart';
import 'package:light_and_dark_theme_with_provider/provider/theme_changer_provider.dart';
import 'package:provider/provider.dart';

class LightAndDarkThemeScreen extends StatefulWidget {
  const LightAndDarkThemeScreen({super.key});

  @override
  State<LightAndDarkThemeScreen> createState() =>
      _LightAndDarkThemeScreenState();
}

class _LightAndDarkThemeScreenState extends State<LightAndDarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Light and Dark Theme Changer")),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('Dark Mode'),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('System Mode'),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          Icon(Icons.favorite),
        ],
      ),
    );
  }
}
