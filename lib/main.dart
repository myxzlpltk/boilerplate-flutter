import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'commons/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      /* Routing */
      initialRoute: Routes.home,
      onGenerateRoute: Routes.router,
      /* ThemeData */
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.blue,
      ),
      /* Locale */
      localizationsDelegates: const [DefaultMaterialLocalizations.delegate],
    );
  }
}
