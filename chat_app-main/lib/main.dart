import 'package:chat_app/logic/cubits/telegram/telegram_cubit.dart';
import 'package:chat_app/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TelegramCubit(),
        ),
      ],
      child: AdaptiveTheme(
        light: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
        dark: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          darkTheme: darkTheme,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
