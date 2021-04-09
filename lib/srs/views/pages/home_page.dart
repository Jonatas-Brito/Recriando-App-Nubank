import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping/srs/lists/horizontal_list.dart';
import 'package:shopping/srs/lists/white_list.dart';

var purpleColor = Colors.purple[700];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isDataVisible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: purpleColor,
          body: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 20),
                    child: ListTile(
                      leading: Text(
                        'Olá, Ipsum',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 95),
                        child: Row(
                          children: [
                            FloatingActionButton(
                                heroTag: 'h1',
                                backgroundColor: Colors.purple[600],
                                child: Icon(
                                  isDataVisible
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  size: 30,
                                ),
                                onPressed: () {
                                  setState(() => isDataVisible = !isDataVisible

                                      /*=> isDataVisible = !isDataVisible*/
                                      );
                                }),
                            const SizedBox(width: 10),
                            FloatingActionButton(
                                heroTag: 'h2',
                                backgroundColor: Colors.purple[600],
                                child: Icon(
                                  Icons.settings_outlined,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/settings');
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        _boxRender(),
                        ListWhite(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            color: purpleColor,
            child: Container(
              child: ListHorizontal(),
              height: 130,
              width: 120,
              color: purpleColor,
            ),
          ),
        ));
  }

  Widget _boxRender() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        child: Container(
            height: 190,
            width: 380,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 30),
                      child: Image.asset(
                        'assets/current_money.png',
                        color: Colors.black54,
                        height: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Text(
                        'Conta',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 20),
                  child: Text('Saldo disponível',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 20),
                  child: isDataVisible
                      ? Text(
                          'R\$ 10.000,00',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87),
                        )
                      : Container(
                          width: 300,
                          height: 45,
                          color: Colors.grey[100],
                        ),
                )
              ],
            )),
      ),
    );
  }
}
