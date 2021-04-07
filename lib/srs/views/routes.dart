import 'package:flutter/material.dart';
import 'package:shopping/srs/views/components/panel_country.dart';
import 'package:shopping/srs/views/components/panel_first_login_widget.dart';
import 'package:shopping/srs/views/components/panel_login_widget.dart';
import 'package:shopping/srs/views/pages/cadastro/cadastro_ok_widget.dart';
import 'package:shopping/srs/views/pages/cadastro/mail_cadastro_widget.dart';
import 'package:shopping/srs/views/pages/cadastro/name_cadastro_widget.dart';
import 'package:shopping/srs/views/pages/home_page.dart';
import 'package:shopping/srs/views/pages/login_page.dart';
import 'package:shopping/srs/views/pages/settings_page.dart';
import 'package:shopping/srs/views/widget/brasil_login.dart';
import 'package:shopping/srs/views/widget/colombia_login.dart';
import 'package:shopping/srs/views/widget/mexico_login.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/login': (context) => PanelLogin(),
        '/country': (context) => PanelCountry(),
        '/f_login': (context) => PanelFirstLogin(),
        '/home': (context) => HomePage(),
        '/brasil': (context) => BrasilLogin(),
        '/colombia': (context) => ColombiaLogin(),
        '/mexico': (context) => MexicoLogin(),
        '/name': (context) => PanelCadastroName(),
        '/mail': (context) => PanelCadastroEmail(),
        '/continuar': (context) => CadastroOk(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
