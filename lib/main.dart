import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'pages/welcome.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
      await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "", appId: "", messagingSenderId: "", projectId: ""));
  }
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage()
    );
  }
}
