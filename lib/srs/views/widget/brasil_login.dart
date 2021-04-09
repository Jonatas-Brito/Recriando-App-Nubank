import 'package:flutter/material.dart';
import 'package:shopping/srs/views/components/panel_country.dart';
import 'package:shopping/srs/views/components/panel_first_login_widget.dart';
import 'package:shopping/srs/views/components/panel_login_widget.dart';

const sizeImage = 272.0;

class BrasilLogin extends StatelessWidget {
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
                      tween: Tween<double>(begin: 0.45, end: 0.38),
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.easeInOutCirc,
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: OverflowBox(
                            maxWidth: kToolbarHeight * size.width,
                            maxHeight: kToolbarHeight * size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Image.asset(
                                'assets/modelo1.png',
                              ),
                            ),
                          ),
                        );
                      }),
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
                          padding: const EdgeInsets.only(top: 50, left: 106),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              child: Container(
                                height: 45,
                                width: 120,
                                color: Colors.black12,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        'Brasil',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    Icon(Icons.keyboard_arrow_down_outlined,
                                        size: 30, color: Colors.white)
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
                      padding: const EdgeInsets.only(top: 25, right: 60),
                      child: Text(
                        'Um mundo financeiro sem complexidades',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 290),
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
                              'COMEÇAR',
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
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                          height: 45,
                          width: 360,
                          child: Align(
                            child: Text(
                              'ENTRAR',
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

  _openPanelLogin(context) {
    Navigator.of(context).push(PageRouteBuilder(
        barrierColor: Colors.purple,
        opaque: false,
        pageBuilder: (_, animation1, __) {
          return FadeTransition(
            opacity: animation1,
            child: PanelLogin(),
          );
        }));
  }

  _openPanelCountry(context) {
    Navigator.of(context).push(PageRouteBuilder(
        barrierColor: Colors.black26,
        opaque: false,
        pageBuilder: (_, animation1, __) {
          return FadeTransition(
            opacity: animation1,
            child: PanelCountry(),
          );
        }));
  }

  _openFirstLogin(context) {
    Navigator.of(context).push(PageRouteBuilder(
        barrierColor: Colors.purple,
        opaque: true,
        pageBuilder: (_, animation1, __) {
          return FadeTransition(
            opacity: animation1,
            child: PanelFirstLogin(),
          );
        }));
  }
}
