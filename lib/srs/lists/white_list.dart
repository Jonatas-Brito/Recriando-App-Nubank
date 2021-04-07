import 'package:flutter/material.dart';

var cor = Colors.purple[700];

var _circularButton = 50.0;

class ListWhite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          child: SizedBox(
            height: 200,
            width: 380,
            child: InkWell(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.credit_card,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            'Cartão de Crédito',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Text(
                        'Fatura atual',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 10),
                      child: Text('R\$ 0,00',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue[500],
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 10),
                      child: Row(
                        children: [
                          Text('Limite disponível',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w400)),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'R\$ 2.000,00',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green[800],
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                color: Colors.white,
              ),
              onTap: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: Container(
              height: 300,
              width: 380,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 40),
                    child: Text('Produzindo Cartão',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 20),
                    child: Text('Entrega prevista',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5),
                    child: Text(
                      '22 Jun',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5),
                    child: Text('Avenida Lorem Ipsum, 9999',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 25),
                    child: SizedBox(
                        height: 50,
                        width: 170,
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black87)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'RECEBI O CARTÃO',
                                style: TextStyle(
                                    color: cor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                          onTap: () {},
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: Container(
              height: 250,
              width: 380,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: _circularButton,
                          width: _circularButton,
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Image.asset(
                            'assets/present.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Rewards',
                            style: TextStyle(
                                fontSize: 30,
                                color: cor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, right: 45),
                      child: Text(
                        'Pague compras com pontos que nunca expiram.',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: SizedBox(
                          height: 50,
                          width: 135,
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black87)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'CONHECER',
                                  style: TextStyle(
                                      color: cor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            onTap: () {},
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: Container(
              height: 250,
              width: 380,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: _circularButton,
                          width: _circularButton,
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Image.asset(
                            'assets/umbrella.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Seguro de vida',
                            style: TextStyle(
                                fontSize: 30,
                                color: cor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, right: 45),
                      child: Text(
                        'Conheça Nubank Vida: um seguro simples e que cabe no bolso.',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: SizedBox(
                            height: 50,
                            width: 135,
                            child: InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black87)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'CONHECER',
                                    style: TextStyle(
                                        color: cor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ))),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 15,
        ),
      ],
    );
  }
}
