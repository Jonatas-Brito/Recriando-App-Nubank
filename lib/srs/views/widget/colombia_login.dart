import 'package:flutter/material.dart';
import 'package:shopping/srs/controller/icon_controller.dart';
import 'package:shopping/srs/views/components/panel_country.dart';
import 'package:shopping/srs/views/components/panel_first_login_widget.dart';
import 'package:shopping/srs/views/components/panel_login_widget.dart';

Controller controller;

const sizeImage = 272.0;

class ColombiaLogin extends StatelessWidget {
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
                      tween: Tween<double>(begin: 0.50, end: 0.62),
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.easeInOutCirc,
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: OverflowBox(
                            maxWidth: kToolbarHeight * size.width,
                            maxHeight: kToolbarHeight * size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Image.asset(
                                'assets/model5.png',
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
                          Colors.black54
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
                            'assets/images/nulogo.png',
                            color: Colors.purple,
                            width: 70,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 55, left: 175),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: InkWell(
                              child: Container(
                                height: 40,
                                width: 115,
                                color: Colors.black38,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Colombia',
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
                      padding: const EdgeInsets.only(top: 25, right: 60),
                      child: Text(
                        'Nu hace tu vida financera más sencilla',
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
                              'CONTINUAR CON MI INVITACIÓN',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            ),
                          ),
                        ),
                        onTap: () {},
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
                              'INICIAR SESIÓN',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
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
}
