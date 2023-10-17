import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    accentColor: Colors.yellow,
  );

  ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    accentColor: Colors.yellow,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dark Mode Example',
      theme: _isDarkMode ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dark Mode Example'),
        ),
        body: Center(
          child: Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _isDarkMode = !_isDarkMode;
            });
          },
          child: Icon(Icons.brightness_6),
        ),
      ),
    );
  }
  ThemeData _getSystemTheme(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      return _darkTheme;
    } else {
      return _lightTheme;
    }
  }
}
/* ListView(
          children: data.map((item) {
            // CardTop(icon:Icons.person_outline_rounded,text:'Contact',isColor:true,page: ContactPage());
            return Card(
            child: ListTile(
            onTap: () => _launchURL(item['url']),
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade100,
        child: FaIcon(
          item['icon'],
          color: item['color'],
          size: 25,
        ),
      ),
      title: Text(
        item['name'],
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      subtitle: Text(item['url']),
      trailing: IconButton(
        icon: const Icon(Icons.arrow_forward),
        onPressed: () => _launchURL(item['url']),
      ),
    ),
    );
    }).toList(),

                ),*/