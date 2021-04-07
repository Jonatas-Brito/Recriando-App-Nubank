import 'package:flutter/material.dart';

class ListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: Container(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8, bottom: 40, top: 5),
                      child: Image.asset(
                        'assets/images/pix.png',
                        fit: BoxFit.cover,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Pix', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              color: Colors.purple[600],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: Container(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8, bottom: 40, top: 5),
                      child: Image.asset(
                        'assets/images/bar_code.png',
                        fit: BoxFit.cover,
                        width: 32,
                        height: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Pagar', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              color: Colors.purple[600],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: Container(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8, bottom: 25, top: 5),
                      child: Image.asset(
                        'assets/images/add_friend.png',
                        fit: BoxFit.cover,
                        width: 32,
                        height: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Indicar amigos',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              color: Colors.purple[600],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: Container(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8, bottom: 40, top: 5),
                      child: Image.asset(
                        'assets/images/transfer.png',
                        fit: BoxFit.cover,
                        width: 32,
                        height: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Transferir',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              color: Colors.purple[600],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: Container(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 8, bottom: 32, top: 5),
                        child: Icon(
                          Icons.phone_iphone_rounded,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Recarga de celular',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              color: Colors.purple[600],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: Container(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 8, bottom: 32, top: 5),
                        child: Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Bloquear cartão',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              color: Colors.purple[600],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: Container(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 2, bottom: 45, top: 5),
                        child: Icon(
                          Icons.attach_money_outlined,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child:
                        Text('Cobrar', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              color: Colors.purple[600],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, top: 10, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: Container(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 8, bottom: 45, top: 5),
                        child: Icon(
                          Icons.help_outline,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child:
                        Text('Me ajuda', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              color: Colors.purple[600],
            ),
          ),
        ),
        /*Padding(
                    padding:
                        const EdgeInsets.only(right: 15, top: 10, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.purple[600],
                      ),
                    ),
                  ),*/
      ],
    );
  }
}
