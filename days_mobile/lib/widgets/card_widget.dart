import 'package:dotted_border/dotted_border.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CardWidget extends StatelessWidget {
  final String name;
  final int processNumber;

  const CardWidget({Key key, this.name, this.processNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.23,
      width: width * 0.84,
      constraints: BoxConstraints(
        minHeight: 220,
        minWidth: 200,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: width * 0.4,
                      maxHeight: height * 0.1,
                    ),
                    child: Text(
                      name.replaceAll(' ', '\n'),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: width * 0.09,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    processNumber.toString(),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.04,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () => _showQR(context, processNumber.toString()),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: width * 0.11,
                  height: width * 0.11,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(
                      7.0,
                    ),
                  ),
                  child: QrImage(
                    data: processNumber.toString(),
                    version: QrVersions.auto,
                    size: width * 0.9,
                    gapless: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_showQR(BuildContext context, String processNumber) async {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  return showFlash(
    context: context,
    duration: Duration(
      minutes: 2,
    ),
    builder: (context, controller) {
      return Padding(
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: Flash.dialog(
          controller: controller,
          backgroundColor: Colors.black.withOpacity(0.9),
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          onTap: () => debugPrint("Hello world"),
          child: Container(
            height: height,
            width: width,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.01,
                      left: width * 0.02,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () => controller.dismiss(),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.18,
                ),
                QrImage(
                  data: processNumber.toString(),
                  version: QrVersions.auto,
                  size: width * 0.5,
                  backgroundColor: Colors.white,
                  gapless: false,
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Text(
                    "Mostra o teu telemóvel ao auxiliar de educação para que este possa saber mais sobre ti",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
