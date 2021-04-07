import 'package:flutter/material.dart';
import 'package:shopping/srs/views/components/panel_country.dart';

class CountryDropDown extends StatelessWidget {
  final ValueNotifier<bool> notifierButtonsVisible = ValueNotifier(false);
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

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
    );
  }
}
