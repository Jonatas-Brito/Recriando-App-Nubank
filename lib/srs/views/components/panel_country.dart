import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shopping/srs/controller/icon_controller.dart';

final controller = Controller();

final iconForwardB = Observer(builder: (_) {
  return controller.iconCheckB.value == 1 || controller.iconCheckB.value == 2
      ? Icon(Icons.check_circle_outline, size: 30)
      : Icon(Icons.arrow_forward_ios);
});
final iconForwardC = Observer(builder: (_) {
  return controller.iconCheckC.value >= 1
      ? Icon(Icons.check_circle_outline, size: 30)
      : Icon(Icons.arrow_forward_ios);
});
final iconForwardM = Observer(builder: (_) {
  return controller.iconCheckM.value >= 1
      ? Icon(Icons.check_circle_outline, size: 30)
      : Icon(Icons.arrow_forward_ios);
});

class PanelCountry extends StatefulWidget {
  @override
  _PanelCountryState createState() => _PanelCountryState();
}

class _PanelCountryState extends State<PanelCountry> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 1.0, end: 0.6),
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
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.close_rounded,
                          size: 50,
                          color: Colors.black45,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 65),
                      child: Text(
                        'SELECIONE O SEU PAÍS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black54),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                indent: 15,
                endIndent: 15,
              ),
              InkWell(
                child: ListTile(
                  leading: Image.asset('assets/images/bandeira-do-brasil.png',
                      height: 35),
                  title: Text("Brasil"),
                  trailing: iconForwardB,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/brasil');
                  controller.incrementB();
                },
              ),
              Divider(
                color: Colors.black,
                indent: 15,
                endIndent: 15,
              ),
              InkWell(
                child: ListTile(
                  leading: Image.asset('assets/images/bandeira-da-colombia.png',
                      height: 35),
                  title: Text("Colombia"),
                  trailing: iconForwardC,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/colombia');
                  controller.incrementC();
                },
              ),
              Divider(
                color: Colors.black,
                indent: 15,
                endIndent: 15,
              ),
              InkWell(
                child: ListTile(
                  leading: Image.asset('assets/images/bandeira-do-mexico.png',
                      height: 35),
                  title: Text("México"),
                  trailing: iconForwardM,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/mexico');
                  controller.incrementM();
                },
              ),
            ],
          )),
        ),
      ],
    );
  }
}
