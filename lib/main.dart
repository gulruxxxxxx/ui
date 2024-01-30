import 'package:flutter/material.dart';
import 'package:i_baza/core/database/objectbox.dart';
import 'package:i_baza/core/injector/set_up_locator.dart';
import 'package:i_baza/core/injector/storage_repository.dart';
import 'package:i_baza/features/authentication/data/models/authenticated_user.dart';
import 'package:i_baza/features/pages/onboarding/onboarding_1.dart';

import 'core/adapter/hive_type_adapter.dart';
import 'features/pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerAdapters();

  await HiveSingleton.getInstance();
  await LocalDataBase.getInstance();
  await initHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    await HiveSingleton.setAuthStatus(true);
    await box?.put('is_hive', 'gulrux');
    await box?.put(
        'auth_user',
        AuthenticatedUserModel(
            id: 'u1910255', firstName: 'Gulrux', lastName: 'Ermatova'));
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Is Authenticated : ${HiveSingleton.getAutStatus()}',
            ),
            Text(
              'Is Hive  : ${box?.get('is_hive', defaultValue: 'incorrect')}',
            ),
            Text(
              '  ${box?.get('auth_user')}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
