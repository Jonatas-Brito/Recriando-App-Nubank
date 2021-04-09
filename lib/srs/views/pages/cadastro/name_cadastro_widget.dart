import 'dart:ui';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shopping/srs/controller/color_controller.dart';
import 'package:shopping/srs/views/pages/cadastro/cadastro_ok_widget.dart';
import 'package:shopping/srs/views/pages/login_page.dart';

final controller = ColorController();

class PanelCadastroName extends StatefulWidget {
  @override
  _PanelCadastroName createState() => _PanelCadastroName();
}

class _PanelCadastroName extends State<PanelCadastroName> {
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final activeButton = Observer(builder: (_) {
      return controller.text.length >= 3
          ? _controllerButtonOn()
          : _controllerButtonOff();
    });
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(color: Colors.purple),
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
                      _openInitial(context);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Digite o seu nome. (Só o primeiro)',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Text(
                    'Pode ser um nick ou algo assim.',
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
                    cursorColor: Colors.purple,
                    autofocus: true,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    cursorHeight: 30,
                    onChanged: controller.mudarText,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(border: InputBorder.none

                        // Estiliza a caixa como uma de input
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 355),
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
        controller.text = '0';
        Navigator.of(context).pushReplacementNamed('/continuar');
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

_openCadastroOk(context) {
  Navigator.of(context).pushReplacement(PageRouteBuilder(
      opaque: false,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: CadastroOk(),
        );
      }));
}

_openInitial(context) {
  Navigator.of(context).pushReplacement(PageRouteBuilder(
      opaque: false,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: LoginPage(),
        );
      }));
}
