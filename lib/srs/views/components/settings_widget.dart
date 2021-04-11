import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 40),
                child: Column(
                  children: [
                    Image.asset('assets/qrcode.png', width: 120),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Text('Agencia 0000 Conta 0000000-0',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    Text('Banco 261 - Nu Pagamentos S.A.',
                        style: TextStyle(color: Colors.white, fontSize: 16))
                  ],
                ),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                  leading: Icon(Icons.help_outline_rounded,
                      color: Colors.white, size: 35),
                  title: Text('Me ajuda',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.white, size: 15),
                  onTap: () {},
                ),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                    leading: Icon(Icons.credit_card_rounded,
                        color: Colors.white, size: 35),
                    title: Text('Ativar função débito',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 15),
                    onTap: () {}),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                    leading: Image.asset('assets/people1.png',
                        color: Colors.white, height: 35),
                    title: Text('Perfil',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 15),
                    onTap: () {}),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                    leading: Image.asset('assets/current_money.png',
                        color: Colors.white, width: 30),
                    title: Text('Configurar conta',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 15),
                    onTap: () {}),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                    leading: Image.asset('assets/images/pix.png',
                        color: Colors.white, width: 30),
                    title: Text('Minhas chaves Pix',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 15),
                    onTap: () {}),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                    leading: Icon(Icons.credit_card_rounded,
                        color: Colors.white, size: 35),
                    title: Text('Configurar cartão',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 15),
                    onTap: () {}),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                    leading: Icon(Icons.home_work_outlined,
                        color: Colors.white, size: 35),
                    title: Text('Pedir Conta PJ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 15),
                    onTap: () {}),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                    leading: Icon(Icons.notifications_outlined,
                        color: Colors.white, size: 35),
                    title: Text('Configurar notificações',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 15),
                    onTap: () {}),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                    leading: Icon(Icons.phone_iphone_rounded,
                        color: Colors.white, size: 35),
                    title: Text('Configurações do app',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 15),
                    onTap: () {}),
              ),
              Divider(
                thickness: 0.40,
                height: 0.35,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                    leading: Icon(Icons.help_outline_rounded,
                        color: Colors.white, size: 35),
                    title: Text('Sobre',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 15),
                    onTap: () {}),
              ),
              Divider(
                thickness: 0.40,
                height: 0.5,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 50,
                        width: 350,
                        child: InkWell(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              height: 40,
                              width: 350,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(color: Colors.white),
                                  color: Colors.purple[700]),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'SAIR DO APP',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pushReplacementNamed('/');
                          },
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
