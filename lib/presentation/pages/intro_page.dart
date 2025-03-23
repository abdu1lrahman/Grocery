import 'package:flutter/material.dart';
import 'package:grocery/generated/l10n.dart';
import 'package:grocery/presentation/providers/language_provider.dart';
import 'package:provider/provider.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void _showLanguageBottomSheet(BuildContext context) {
    final languageProvider =
        Provider.of<LanguageProvider>(context, listen: false);
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  (languageProvider.locale.languageCode == 'en')
                      ? Icons.flag
                      : Icons.flag_outlined,
                ),
                title: const Text('English'),
                onTap: () {
                  languageProvider.setLocale(Locale('en'));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  (languageProvider.locale.languageCode == 'ar')
                      ? Icons.flag
                      : Icons.flag_outlined,
                ),
                title: const Text('العربية '),
                onTap: () {
                  languageProvider.setLocale(Locale('ar'));
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // The grocery Image
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.1,
                vertical: screenHeight * 0.06,
              ),
              child: Image.asset(
                width: screenWidth * 0.7,
                // height: screenWidth * 0.3,
                "assets/images/marketplace.png",
              ),
            ),
            // Main intro
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
              child: Text(
                S.of(context).main_intro,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenWidth * 0.1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Second intro
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04,
                vertical: screenHeight * 0.001,
              ),
              child: Text(
                S.of(context).second_intro,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: screenWidth * 0.04,
                ),
              ),
            ),
            const Spacer(),
            // Get started button
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "home");
              },
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(16)),
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    S.of(context).get_started,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: S.of(context).language,
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: const CircleBorder(),
        child: const Icon(Icons.language),
        onPressed: () {
          _showLanguageBottomSheet(context);
        },
      ),
    );
  }
}
