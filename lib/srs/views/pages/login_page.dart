import 'package:flutter/material.dart';
import 'package:shopping/srs/views/widget/brasil_login.dart';
import 'package:shopping/srs/views/widget/colombia_login.dart';

var isGrowing;
const sizeImage = 272.0;
final startSize = 600.0;
final startImageSize = 720.0;
final endImageSize = 600.0;

final ValueNotifier<bool> notifierButtonsVisible = ValueNotifier(false);

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var visible = false;

  Future<Widget> getInfo() async =>
      await Future.delayed(Duration(seconds: 3), () => widget1());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: getInfo(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return widget1();
        } else if (!snapshot.hasData) {
          return widget2();
        } else if (snapshot.hasError) {
          return widget3(snapshot.error);
        }
      },
    );

    /*visible
        ? loginPage()
        : Stack(
            children: [
              Container(color: Colors.purple),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/nulogo.png',
                    height: 80,
                  ),
                ),
              )1
            ],
          );*/
  }

  Widget widget3(snapshot) {
    return Center(
      child: Text(snapshot.error),
    );
  }

  Widget widget2() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              'assets/images/nulogo.png',
              height: 90,
            ),
          ),
        ),
      ),
    );
  }

  Widget widget1() {
    var brasil = true;
    return brasil ? BrasilLogin() : ColombiaLogin();
  }
}
