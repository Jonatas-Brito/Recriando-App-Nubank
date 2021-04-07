import 'package:flutter/material.dart';
import 'package:shopping/srs/views/components/settings_widget.dart';

// const colors = c#9924c3;
var purpleColor = Colors.purple[700];

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: purpleColor,
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(top: 80, left: 10, bottom: 10),
                    child: ListTile(
                      leading: Text(
                        'Olá, Ipsum',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: FloatingActionButton(
                          backgroundColor: Colors.purple[500],
                          elevation: 0,
                          child: Icon(
                            Icons.close_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                        ),
                      ),
                    )),
                SettingsView(),
              ],
            ),
          ],
        ));
  }
}
