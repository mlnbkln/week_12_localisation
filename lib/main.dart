// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('ru', ''),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomeWidget(),
      },
    );
  }
}



class MyHomeWidget extends StatelessWidget {
  const MyHomeWidget({
    Key? key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale activeLocale = Localizations.localeOf(context);
// Если текущая локаль en
    debugPrint(activeLocale.languageCode); // => en
    var translation = AppLocalizations.of(context)!;
    var message = translation.jarTotal;
    DateTime date = DateTime.parse("2021-01-17");
    DateTime date1 = DateTime.parse("2021-01-16");
    DateTime date2 = DateTime.parse("2021-01-18");
      return Scaffold(
        appBar: AppBar(
          title: Text(translation.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.network('https://i.pinimg.com/originals/a1/90/5c/a1905c3d2adac96c9e9c094dccafc857.jpg'),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          translation.winnieName,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(translation.purchase(date)),
                        Text(translation.jarCount(4) +
                            translation.honey(" 'Bearhoney' ") + message(20)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.network('https://www.disneyclips.com/images/images/tigger-heart.png'),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          translation.tigger,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(translation.purchase(date1)),
                        Text(translation.jarCount(5) +
                            translation.honey(" 'Tiggerhoney' ") + message(25)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.network('https://i.pinimg.com/564x/b1/d5/17/b1d517e5df335241d647870f2795d692.jpg'),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          translation.piglet,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(translation.purchase(date2)),
                        Text(translation.jarCount(3) +
                            translation.honey(" 'Piglethoney' ") + message(15)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}

