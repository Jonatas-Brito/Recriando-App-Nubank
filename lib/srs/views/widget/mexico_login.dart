import 'package:flutter/material.dart';
import 'package:shopping/srs/views/components/panel_country.dart';
import 'package:shopping/srs/views/components/panel_first_login_widget.dart';
import 'package:shopping/srs/views/components/panel_login_widget.dart';

const sizeImage = 272.0;

final ValueNotifier<bool> notifierButtonsVisible = ValueNotifier(false);

Future<void> _openPanelLogin(context) async {
  notifierButtonsVisible.value = false;
  await Navigator.of(context).push(PageRouteBuilder(
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

Future<void> _openPanelCountry(context) async {
  notifierButtonsVisible.value = false;
  await Navigator.of(context).push(PageRouteBuilder(
      barrierColor: Colors.black26,
      opaque: false,
      pageBuilder: (_, animation1, __) {
        return FadeTransition(
          opacity: animation1,
          child: PanelCountry(),
        );
      }));
  notifierButtonsVisible.value = true;
}

Future<void> _openFirstLogin(context) async {
  notifierButtonsVisible.value = false;
  Navigator.of(context).push(PageRouteBuilder(
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

class MexicoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.purple,
          body: Stack(
            children: [
              Stack(
                children: [
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0.65, end: 0.50),
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.easeInOutCirc,
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: OverflowBox(
                            maxWidth: kToolbarHeight * size.width,
                            maxHeight: kToolbarHeight * size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: sizeImage / 10, left: 50),
                              child: Image.asset(
                                'assets/model6.png',
                              ),
                            ),
                          ),
                        );
                      }),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Colors.white10,
                          Colors.black12,
                          Colors.black26
                        ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Image.asset(
                            'assets/images/nubank-logo.png',
                            color: Colors.white,
                            width: 135,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 55, left: 126),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: InkWell(
                              child: Container(
                                height: 40,
                                width: 100,
                                color: Colors.black38,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'México',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                    Icon(Icons.keyboard_arrow_down_outlined,
                                        color: Colors.white)
                                  ],
                                ),
                              ),
                              onTap: () {
                                _openPanelCountry(context);
                                /*Navigator.of(context).pushNamed('/country');*/
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 285, right: 60),
                      child: Text(
                        'Nu hace más sencilla tu vida financera',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                          height: 45,
                          width: 360,
                          child: Align(
                            child: Text(
                              'ENTRAR CON TU INVITACIÓN',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            ),
                          ),
                        ),
                        onTap: () {
                          _openFirstLogin(context);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                          height: 45,
                          width: 360,
                          child: Align(
                            child: Text(
                              'INICIAR SESIÓN',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {
                          _openPanelLogin(context);
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
