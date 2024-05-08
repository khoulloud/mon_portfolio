import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  final void Function(bool) toggleTheme; // Ajout de toggleTheme

  const SplashScreen({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen(key: Key('home_screen_key'), toggleTheme: widget.toggleTheme)), // Passer toggleTheme
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'img/spalsh.png',
              width: w*0.7,
              height: h*0.3,
              fit: BoxFit.cover,
            ),
            //  Ink.image(image: const AssetImage('img/resume.png'),width: w*0.3, height: h * 0.3,),
            // FlutterLogo(size: 100),
            const SizedBox(height: 20),
            const Text(
              'Gharbi Khouloud',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
