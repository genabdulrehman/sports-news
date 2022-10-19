import 'package:azul_football/helpers/constants.dart';
import 'package:azul_football/models/product_model.dart';
import 'package:azul_football/screens/home_pages/bottom_nav_screen.dart';
import 'package:azul_football/screens/home_pages/shop/shop_page.dart';
import 'package:azul_football/screens/user/login.dart';
import 'package:azul_football/screens/user/register.dart';
import 'package:azul_football/screens/user/splash.dart';
import 'package:azul_football/screens/user/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'helpers/theme.dart';
import 'localizations/demo_localizations.dart';
import 'localizations/localization_constants.dart';
import 'providers/theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, theme, child) {
        return GetMaterialApp(
          title: kAppName,
          debugShowCheckedModeBanner: false,
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          transitionDuration: Duration(milliseconds: 300),
          defaultTransition: Transition.rightToLeftWithFade,
          locale: _locale,
          supportedLocales: kLocaleSupport,
          localizationsDelegates: [
            DemoLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (deviceLocale, supportedLocales) {
            for (var locale in supportedLocales) {
              if (locale.languageCode == deviceLocale.languageCode &&
                  locale.countryCode == deviceLocale.countryCode) {
                return deviceLocale;
              }
            }

            return supportedLocales.first;
          },
          initialRoute: '/',
          routes: {
            '/': (_) => ShopPage(),
            '/welcome': (_) => WelcomeScreen(),
            '/logIn': (_) => LogInScreen(),
            '/register': (_) => RegisterScreen(),
            '/home': (_) => BottomNavScreen(),
          },
        );
      }),
    );
  }
}
