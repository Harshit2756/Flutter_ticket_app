import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base/res/routes/routes.dart';
import 'base/res/routes/routes_name.dart';
import 'controller/bloc/bottom_nav_bar/bottom_nav_bloc.dart';
import 'controller/bloc/readmore/readmore_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavBloc()),
        BlocProvider(create: (context) => TextExpansionBloc()),
      ],
      child: MaterialApp(
        title: 'Ticket App',
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.initial,
        onGenerateRoute: Routes.onGenerateRoute,
      ),
    );
  }
}


// flutter build web 
// xcopy /E /H /Y build\web\* docs\
