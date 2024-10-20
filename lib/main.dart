import 'package:flutter/material.dart';

import 'base/res/routes/routes.dart';
import 'base/res/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ticket App',
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.initial,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
