import 'package:flet/flet.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class FletMrcScannerService extends FletService {
  FletMrcScannerService({required super.control});

  late MobileScannerController controller;

  @override
  void init() {
    super.init();
    controller = MobileScannerController();
    debugPrint("FletMrcScannerService.init");

    control.view = (context) => MobileScanner(
          controller: controller,
          onDetect: (barcodeCapture) {
            final value = barcodeCapture.barcodes.first.rawValue;
            if (value != null) {
              control.triggerEvent("scan", {"value": value});
            }
          },
        );
  }

  @override
  void dispose() {
    debugPrint("FletMrcScannerService.dispose");
    controller.dispose();
    super.dispose();
  }
}
