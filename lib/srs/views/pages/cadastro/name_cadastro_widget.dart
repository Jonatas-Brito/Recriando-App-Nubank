import 'dart:ui';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping/srs/views/pages/cadastro/cadastro_ok_widget.dart';
import 'package:shopping/srs/views/pages/login_page.dart';

final ValueNotifier<bool> notifierButtonsVisible = ValueNotifier(false);

Future<void> _openCadastroOk(context) async {
  notifierButtonsVisible.value = false;
  await Navigator.of(context).pushReplacement(PageRouteBuilder(
      opaque: false,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: CadastroOk(),
        );
      }));
  notifierButtonsVisible.value = true;
}

Future<void> _openInitial(context) async {
  notifierButtonsVisible.value = false;
  await Navigator.of(context).pushReplacement(PageRouteBuilder(
      opaque: false,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: LoginPage(),
        );
      }));
  notifierButtonsVisible.value = true;
}

class PanelCadastroName extends StatefulWidget {
  @override
  _PanelCadastroName createState() => _PanelCadastroName();
}

class _PanelCadastroName extends State<PanelCadastroName> {
  final numberController = TextEditingController();
  String name;
  @override
  Widget build(BuildContext context) {
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
                    onChanged: (text) {
                      name = text;
                    },
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
                            color: Colors.black45),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (name != '') {
                      _openCadastroOk(context);
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
