import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'base/res/routes/routes.dart';
import 'base/res/routes/routes_name.dart';

void main() {
  runApp(
    ProviderScope(child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket App',
      locale: DevicePreview.locale(context), // add this line
      builder: DevicePreview.appBuilder, // add this line
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.initial,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}


// flutter build web 
// xcopy /E /H /Y build\web\* docs\

