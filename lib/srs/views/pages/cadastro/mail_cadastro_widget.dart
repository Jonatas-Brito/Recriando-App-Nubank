import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping/srs/views/pages/cadastro/name_cadastro_widget.dart';

class PanelCadastroEmail extends StatefulWidget {
  @override
  _PanelCadastroEmail createState() => _PanelCadastroEmail();
}

class _PanelCadastroEmail extends State<PanelCadastroEmail> {
  final numberController = TextEditingController();
  String email;

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
                      Icons.arrow_back,
                      size: 35,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/f_login');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Digite um email random.',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Text(
                    'Ele servira para fingir que está criando de fato uma conta, por isso não use um email pessoal!',
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
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(border: InputBorder.none

                        // Estiliza a caixa como uma de input
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 335),
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
                    if (email != '') {
                      _openCadastroName(context);
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

  _openCadastroName(context) {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        opaque: true,
        pageBuilder: (_, animation1, __) {
          return FadeTransition(
            opacity: animation1,
            child: PanelCadastroName(),
          );
        }));
  }
}
