import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/presentation/pages/cart_page.dart';
import 'package:grocery/presentation/pages/home_page.dart';
import 'package:grocery/presentation/pages/test.dart';
import 'package:grocery/presentation/providers/language_provider.dart';
import 'package:grocery/presentation/providers/cart_provider.dart';
import 'package:grocery/presentation/pages/intro_page.dart';
import 'package:provider/provider.dart';
import 'package:grocery/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      title: 'Grocery Shop',
      debugShowCheckedModeBanner: false,
      // this is for the language support
      locale: languageProvider.locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      // this is the theme of the app
      theme: ThemeData(
        // The font that is used in the app is notoKufiArabicTextTheme
        textTheme: GoogleFonts.notoKufiArabicTextTheme(),
      ),
      routes: {
        "home": (context) => const HomePage(),
        "cart": (context) => const CartPage(),
      },
      home: const Testx(),
    );
  }
}
