import 'dart:ui';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shopping/srs/controller/color_controller.dart';
import 'package:shopping/srs/views/pages/login_page.dart';

final controller = ColorController();

class PanelFirstLogin extends StatefulWidget {
  @override
  _PanelFirstLoginState createState() => _PanelFirstLoginState();
}

class _PanelFirstLoginState extends State<PanelFirstLogin> {
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final activeButton = Observer(builder: (_) {
      return controller.text.length == 14
          ? _controllerButtonOn()
          : _controllerButtonOff();
    });
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
                      controller.text = '0';
                      Navigator.pop(context);
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
                    onChanged: controller.mudarText,
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
                activeButton,
              ],
            ),
          ),
        ),
      ],
    );
  }

  _controllerButtonOn() {
    return InkWell(
      child: Container(
        height: 60,
        width: 410,
        child: Align(
          child: Text(
            'CONTINUAR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.purple,
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushReplacementNamed('/mail');
      },
    );
  }

  _controllerButtonOff() {
    return Container(
      height: 60,
      width: 410,
      child: Align(
          child: Text(
        'CONTINUAR',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.black54,
        ),
      )),
    );
  }
}

_openLoginPage(context) {
  Navigator.of(context).pushReplacement(PageRouteBuilder(
      opaque: true,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: LoginPage(),
        );
      }));
}
