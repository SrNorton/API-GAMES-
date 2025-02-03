import 'package:consumer_api/home_Page.dart';
import 'package:consumer_api/manager/api_manager.dart';
import 'package:consumer_api/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ApiManager(),
            lazy: true,
        ),
      ],
      child: MaterialApp(
        title: 'Games4weekend',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: Colors.black,
            secondary: Colors.yellowAccent,
            ),
          useMaterial3: true,
        ),
        home: MyWidget()
      ),
    );
  }
}

