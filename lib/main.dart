import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_assignment/firebase_options.dart';
import 'package:s_rocks_music_assignment/main_page.dart';
import 'package:s_rocks_music_assignment/viewmodels/home_viewmodel.dart';
import 'package:s_rocks_music_assignment/viewmodels/main_page_viewmodel.dart';
import 'package:s_rocks_music_assignment/viewmodels/news_viewmodel.dart';
import 'package:s_rocks_music_assignment/viewmodels/projects_viewmodel.dart';
import 'package:s_rocks_music_assignment/viewmodels/service_detail_viewmodel.dart';
import 'package:s_rocks_music_assignment/viewmodels/trackbox_viewmodel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainPageViewModel()),
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ChangeNotifierProvider(create: (_) => NewsViewModel()),
        ChangeNotifierProvider(create: (_) => ProjectsViewModel()),
        ChangeNotifierProvider(create: (_) => TrackboxViewModel()),
        ChangeNotifierProvider(create: (_) => ServiceDetailViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.syneTextTheme(),
        ),
        darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF18171C),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark,
          ),
          textTheme: GoogleFonts.syneTextTheme(ThemeData.dark()
              .textTheme
              .apply(bodyColor: Colors.white, displayColor: Colors.white)),
        ),
        home: const MainPage(),
      ),
    );
  }
}
