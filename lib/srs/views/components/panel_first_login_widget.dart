import 'dart:ui';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping/srs/views/pages/login_page.dart';

final ValueNotifier<bool> notifierButtonsVisible = ValueNotifier(false);

Future<void> _openLoginPage(context) async {
  notifierButtonsVisible.value = false;
  await Navigator.of(context).pushReplacement(PageRouteBuilder(
      opaque: true,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: LoginPage(),
        );
      }));
  notifierButtonsVisible.value = true;
}

class PanelFirstLogin extends StatefulWidget {
  @override
  _PanelFirstLoginState createState() => _PanelFirstLoginState();
}

class _PanelFirstLoginState extends State<PanelFirstLogin> {
  final numberController = TextEditingController();
  String cpf = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: Colors.purple,
        ),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 1.0, end: 0.1),
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOutCubic,
          builder: (context, value, child) {
            return Transform.translate(
              offset: Offset(
                0.0,
                value * size.height * 1.0,
              ),
              child: child,
            );
          },
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: IconButton(
                    icon: Icon(
                      Icons.close_rounded,
                      size: 35,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      _openLoginPage(context);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Boas-vindas ao Nubank! Para começar, qual o seu CPF?',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Text(
                    'Preciamos dele para dar início ao seu cadastro.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                        fontSize: 16),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CpfInputFormatter(),
                    ],
                    cursorColor: Colors.purple,
                    autofocus: true,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    controller: numberController,
                    cursorHeight: 30,
                    onChanged: (text) {
                      cpf = text;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: InputBorder.none

                        // Estiliza a caixa como uma de input
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 325),
                  child: Container(
                    height: 0.4,
                    width: 415,
                    color: Colors.black45,
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 60,
                    width: 410,
                    child: Align(
                      child: Text(
                        'CONTINUAR',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: cpf.length >= 11
                                ? Colors.purple
                                : Colors.black45),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (cpf != '') {
                      Navigator.of(context).popAndPushNamed('/mail');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
