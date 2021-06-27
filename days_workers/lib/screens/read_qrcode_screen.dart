import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ReadQRCodeScreen extends StatefulWidget {
  ReadQRCodeScreen({Key key}) : super(key: key);

  @override
  _ReadQRCodeScreenState createState() => _ReadQRCodeScreenState();
}

class _ReadQRCodeScreenState extends State<ReadQRCodeScreen> {
  QRViewController controller;
  Barcode result;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    controller.pauseCamera();
    controller.resumeCamera();
  }

  Text _checkQRCode(String code) {
    if (code.contains('days.test/students/')) {
      try {
        int slashIndex = code.lastIndexOf('/');
        String studentId = code.substring(slashIndex + 1, code.length);
        int id = int.parse(studentId);
        print('ID lido: ' + id.toString());
        print('profile/$id');
        Navigator.pushNamed(context, 'profile/$id');
      } catch (e) {
        result = null;
        return Text(
          "Aluno inválido",
          style: TextStyle(
            color: Colors.white,
          ),
        );
      }
    } else {
      result = null;
      return Text(
        "Código inválido",
        style: TextStyle(
          color: Colors.white,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: (result != null)
                        ? _checkQRCode(result.code)
                        : Text(
                            "Procure um aluno e aponte para o seu código QR!",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }
}
