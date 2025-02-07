import 'package:flutter/material.dart';
import 'package:flutter_application_1/TandC_5X/View/terms_conditions.dart';
import 'package:flutter_application_1/academy/view/video_academy_main.dart';
import 'package:flutter_application_1/chart.dart';
import 'package:flutter_application_1/favourite/view/favourite_view_screen.dart';
import 'Support/Views/support_view.dart';
import 'academy/view/certificate_view.dart';
import 'academy/view/live_webinar_view.dart';
import 'academy/view/training_view.dart';
import 'academy/view/two_min_gyan_view.dart';
import 'academy/view/webinar_view.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  FavouriteViewScreen(),
    );
  }
}
