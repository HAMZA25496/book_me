
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class QRCodeScan extends StatefulWidget {
  const QRCodeScan({Key? key}) : super(key: key);
  static const String id = 'qrscan_screen';
  @override
  State<QRCodeScan> createState() => _QRCodeScanState();
}

class _QRCodeScanState extends State<QRCodeScan> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  MobileScannerController cameraController = MobileScannerController();
   DocumentReference? code;
  bool showSpinner = false;

@override
  void initState() {
  super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Mobile Scanner'),
          actions: [
            IconButton(
              color: Colors.white,
              icon: ValueListenableBuilder(
                valueListenable: cameraController.torchState,
                builder: (context, state, child) {
                  switch (state) {
                    case TorchState.off:
                      return const Icon(Icons.flash_off, color: Colors.grey);
                    case TorchState.on:
                      return const Icon(Icons.flash_on, color: Colors.yellow);
                  }
                },
              ),
              iconSize: 32.0,
              onPressed: () => cameraController.toggleTorch(),
            ),
            IconButton(
              color: Colors.white,
              icon: ValueListenableBuilder(
                valueListenable: cameraController.cameraFacingState,
                builder: (context, state, child) {
                  switch (state) {
                    case CameraFacing.front:
                      return const Icon(Icons.camera_front);
                    case CameraFacing.back:
                      return const Icon(Icons.camera_rear);
                  }
                },
              ),
              iconSize: 32.0,
              onPressed: () => cameraController.switchCamera(),
            ),
          ],
        ),
        body: Center(
          child: ModalProgressHUD(
            inAsyncCall: showSpinner,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: MobileScanner(
                      allowDuplicates: false,
                      controller: cameraController,
                      onDetect: (barcode, args) {
                        if (barcode.rawValue != null) {


                          Future<DocumentReference<Map<String,dynamic>>>    code = firestore.collection("data").add({
                            "qrScan" : barcode.rawValue,
                          });

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(barcode.rawValue.toString()  ),
                          ));
                          setState(() {
                            showSpinner = true;

                          });
                          debugPrint('Barcode found! $code');
                        } else {
                          debugPrint('Failed to scan Barcode');

                        }
                      }),
                ),
                 Expanded(
                   flex: 1,
                     child: Text(code.toString())),
              ],
            ),
          ),
        ));
  }
}
