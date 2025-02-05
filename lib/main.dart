import 'package:flutter/material.dart';
import 'package:flutter_application_1/video_academy.dart';
import 'Video_Screens/certificate_view.dart';
import 'Video_Screens/live_webinar_view.dart';
import 'Video_Screens/training_view.dart';
import 'Video_Screens/two_min_gyan_view.dart';
import 'Video_Screens/webinar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/certificate_view': (context) => CertificateView(),
        '/two_min_gyan_view': (context) => TwoMinGyanView(),
        '/live_webinar_view': (context) => LiveWebinarView(),
        '/webinar_view': (context) => WebinarView(),
        '/training_view': (context) => TrainingView(),
      },

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:  VideoAcademy(),
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

  void _incrementCounter() {
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
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

