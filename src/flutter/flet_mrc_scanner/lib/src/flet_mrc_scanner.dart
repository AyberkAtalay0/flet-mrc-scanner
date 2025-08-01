import 'package:flutter/material.dart';
import 'package:flet/flet.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class FletMrcScannerService extends FletService {
  FletMrcScannerService({required super.control});

  final MobileScannerController _controller = MobileScannerController();

  @override
  void init() {
    super.init();
    control.view = (context) => MobileScanner(
          controller: _controller,
          onDetect: (capture) {
            for (final barcode in capture.barcodes) {
              final value = barcode.rawValue;
              if (value != null) {
                control.triggerEvent("scan", {"value": value});
              }
            }
          },
        );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
