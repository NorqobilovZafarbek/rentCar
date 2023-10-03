import 'package:flutter/material.dart';
import 'package:rentcar/src/common/controllers/storage/storage.dart';
import 'package:rentcar/src/common/widgets/app.dart';
import 'package:rentcar/src/common/widgets/splash_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  Future<void> getStorage() async {
    await Future.delayed(const Duration(seconds: 1));
    $storage = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getStorage(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          return const App();
        } else {
          return const SplashApp();
        }
      },
    );
  }
}
