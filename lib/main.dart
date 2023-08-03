import 'package:cruv_task_1/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(255, 6, 94, 247),
    background: const Color.fromARGB(255, 255, 255, 255));

final theme = ThemeData().copyWith(
  useMaterial3: true,
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.jetBrainsMonoTextTheme().copyWith(
    titleLarge: GoogleFonts.jetBrainsMono(
      fontWeight: FontWeight.w400,
    ),
    titleMedium: GoogleFonts.crimsonText(
      fontWeight: FontWeight.w200,
      fontSize: 20,
      fontStyle: FontStyle.italic,
    ),
    titleSmall: GoogleFonts.lato(
      fontWeight: FontWeight.w400,
      fontSize: 10,
    ),
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: HomeScreen(title: 'title'),
    );
  }
}
