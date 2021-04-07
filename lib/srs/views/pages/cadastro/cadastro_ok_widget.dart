import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping/srs/views/components/panel_login_widget.dart';

final ValueNotifier<bool> notifierButtonsVisible = ValueNotifier(false);

Future<void> _openLogin(context) async {
  notifierButtonsVisible.value = false;
  await Navigator.of(context).pushReplacement(PageRouteBuilder(
      barrierColor: Colors.purple,
      opaque: false,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: PanelLogin(),
        );
      }));
  notifierButtonsVisible.value = true;
}

class CadastroOk extends StatefulWidget {
  @override
  _CadastroOkState createState() => _CadastroOkState();
}

class _CadastroOkState extends State<CadastroOk> {
  var isTrue = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: Colors.purple,
        ),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 11.0, end: 0.0),
          duration: const Duration(milliseconds: 400),
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
            child: Scaffold(
              body: Stack(
                children: [
                  ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/images/background2.png'),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 50),
                                    child: Container(
                                      height: 200,
                                      child: AnimatedAlign(
                                        duration: Duration(milliseconds: 1000),
                                        curve: Curves.easeInOut,
                                        alignment: isTrue
                                            ? Alignment.topLeft
                                            : Alignment.bottomLeft,
                                        child: Image.asset(
                                          'assets/images/boneca.png',
                                          height: 150,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 50, right: 10),
                                    child: Container(
                                      height: 200,
                                      child: AnimatedAlign(
                                        duration: Duration(milliseconds: 800),
                                        curve: Curves.easeInOut,
                                        alignment: isTrue
                                            ? Alignment.bottomRight
                                            : Alignment.topRight,
                                        child: Image.asset(
                                          'assets/images/boneco.png',
                                          height: 150,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80, top: 30),
                                    child: Container(
                                      height: 100,
                                      child: AnimatedAlign(
                                        duration: Duration(milliseconds: 800),
                                        curve: Curves.easeInOut,
                                        alignment: isTrue
                                            ? Alignment.bottomCenter
                                            : Alignment.topCenter,
                                        child: Image.asset(
                                          'assets/images/cartao.png',
                                          height: 70,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          /* FloatingActionButton(onPressed: () {
                      setState(() => isTrue = !isTrue);
                    }),*/
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 40),
                            child: Text('Aprovamos a conta para você',
                                style: TextStyle(fontSize: 30)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 25),
                            child: Text('Benefícios da conta',
                                style: TextStyle(fontSize: 18)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: InkWell(
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/images/transfer.png',
                                  height: 40,
                                  color: Colors.black54,
                                ),
                                title: Text(
                                    'Tranferências gratuitas e ilimitadas para todos os bancos',
                                    style: TextStyle(color: Colors.black54)),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 15,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          Divider(
                            height: 5,
                            color: Colors.black45,
                          ),
                          InkWell(
                            child: ListTile(
                              leading: Image.asset(
                                'assets/current_money.png',
                                height: 35,
                                color: Colors.black38,
                              ),
                              title: Text('Sem tarifas de manutenção',
                                  style: TextStyle(color: Colors.black54)),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                              ),
                            ),
                            onTap: () {},
                          ),
                          Divider(
                            height: 5,
                            color: Colors.black45,
                          ),
                          InkWell(
                            child: ListTile(
                              leading: Icon(
                                Icons.credit_card_rounded,
                                color: Colors.black38,
                                size: 35,
                              ),
                              title: Text('Sem tarifas de manutenção',
                                  style: TextStyle(color: Colors.black54)),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                              ),
                            ),
                            onTap: () {},
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 25),
                            child: Text('Sobre o cartão de crédito',
                                style: TextStyle(fontSize: 18)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: Text(
                              'Nesse momento não podemos te oferecer um cartão de crédito. Caso você mantenha o interesse, aguarde 3 meses para fazer um novo pedido.',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black54),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Divider(
                              height: 5,
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
                                      color: Colors.purple),
                                ),
                              ),
                            ),
                            onTap: () {
                              _openLogin(context);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
