import 'package:flutter/material.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final parallax = Parallax;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Parallax(
        sensor: ParallaxSensor.accelerometer,
        layers: [
          Layer(
            sensitivity: 2,
            image: NetworkImage(
                "https://img.freepik.com/free-vector/abstract-background-mobile-with-fluid-shapes-gradient-effect_79603-553.jpg?w=740&t=st=1707381502~exp=1707382102~hmac=da7549e04f7dd230771d1c2a5b4423b363e0c7736a548c530cbc4f86b2388aba"),
            preventCrop: true,
            imageBlurValue: 2,
          ),
          Layer(
              sensitivity: 4,
              offset: Offset(185, 650),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white.withOpacity(0.8),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      spreadRadius: 10,
                      color: Color.fromRGBO(0, 0, 0, 0.20),
                    )
                  ],
                ),
              )),
          Layer(
            sensitivity: 7,
            image: AssetImage("assets/logo.png",),
            imageHeight: 100,
            imageWidth: 100,
            imageFit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
