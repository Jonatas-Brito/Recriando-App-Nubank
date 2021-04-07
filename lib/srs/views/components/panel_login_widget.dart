import 'dart:ui';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shopping/srs/views/components/panel_first_login_widget.dart';
import 'package:shopping/srs/views/pages/login_page.dart';

final ValueNotifier<bool> notifierButtonsVisible = ValueNotifier(false);

String cpf = "";

/*final colorPurple = Observer(builder: (_) {
  return cpf.length >= 14 ? color.colorCheckA : true;
});*/

Future<void> _openLoginPage(context) async {
  notifierButtonsVisible.value = false;
  await Navigator.of(context).pushReplacement(PageRouteBuilder(
      barrierColor: Colors.purple,
      opaque: true,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: LoginPage(),
        );
      }));
  notifierButtonsVisible.value = true;
}

Future<void> _openFirstLogin(context) async {
  notifierButtonsVisible.value = false;
  await Navigator.of(context).pushReplacement(PageRouteBuilder(
      barrierColor: Colors.purple,
      opaque: true,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: PanelFirstLogin(),
        );
      }));
  notifierButtonsVisible.value = true;
}

final _sigInFormKey = GlobalKey<FormState>();

class PanelLogin extends StatefulWidget {
  @override
  _PanelLoginState createState() => _PanelLoginState();
}

class _PanelLoginState extends State<PanelLogin> {
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TweenAnimationBuilder<double>(
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
      child: Stack(
        children: [
          Container(color: Colors.purple),
          Material(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Stack(
                  children: [
                    Positioned(
                      top: 5,
                      left: 5,
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
                    Positioned(
                      top: 65,
                      left: 20,
                      right: 20,
                      child: Column(
                        children: [
                          Text(
                            'Bom te ver novamente! Para entrar, digite o seu CPF',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black87,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 150.0, left: 20, right: 20),
                      child: TextFormField(
                        key: _sigInFormKey,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          CpfInputFormatter(),
                        ],
                        autofocus: true,
                        cursorColor: Colors.purple,
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
                    Positioned(
                        left: 0,
                        bottom: 130,
                        child: Container(
                          height: 0.4,
                          width: 415,
                          color: Colors.black45,
                        )),
                    Positioned(
                      left: 20,
                      bottom: 150,
                      child: InkWell(
                        child: Container(
                          height: 30,
                          width: 150,
                          child: Row(
                            children: [
                              Text(
                                'É novo aqui? Começar',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black45),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.black45,
                                size: 10,
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          _openFirstLogin(context);
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      left: 0,
                      child: InkWell(
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
                          if (cpf != '') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
