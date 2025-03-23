// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `We deliver groceries at your doorstep`
  String get main_intro {
    return Intl.message(
      'We deliver groceries at your doorstep',
      name: 'main_intro',
      desc: '',
      args: [],
    );
  }

  /// `Fresh vegetables and fruits everyday`
  String get second_intro {
    return Intl.message(
      'Fresh vegetables and fruits everyday',
      name: 'second_intro',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `cart`
  String get cart {
    return Intl.message(
      'cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `language`
  String get language {
    return Intl.message(
      'language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning,`
  String get morning {
    return Intl.message(
      'Good Morning,',
      name: 'morning',
      desc: '',
      args: [],
    );
  }

  /// `Good Afternoon,`
  String get afternoon {
    return Intl.message(
      'Good Afternoon,',
      name: 'afternoon',
      desc: '',
      args: [],
    );
  }

  /// `Good Evening,`
  String get evening {
    return Intl.message(
      'Good Evening,',
      name: 'evening',
      desc: '',
      args: [],
    );
  }

  /// `Good Night,`
  String get night {
    return Intl.message(
      'Good Night,',
      name: 'night',
      desc: '',
      args: [],
    );
  }

  /// `Let's order fresh items for you`
  String get home_intro {
    return Intl.message(
      'Let\'s order fresh items for you',
      name: 'home_intro',
      desc: '',
      args: [],
    );
  }

  /// `categories`
  String get category {
    return Intl.message(
      'categories',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `account`
  String get account {
    return Intl.message(
      'account',
      name: 'account',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
