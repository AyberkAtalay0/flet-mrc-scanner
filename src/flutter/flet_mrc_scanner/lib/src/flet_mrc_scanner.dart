import 'package:flutter/material.dart';
import 'package:flet/flet.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class FletMrcScannerControl extends StatefulWidget {
  final Control? parent;
  final Control control;

  const FletMrcScannerControl({
    super.key,
    required this.parent,
    required this.control,
  });

  @override
  State<FletMrcScannerControl> createState() => _FletMrcScannerControlState();
}

class _FletMrcScannerControlState extends State<FletMrcScannerControl> {
  late MobileScannerController scannerController;

  @override
  void initState() {
    super.initState();
    scannerController = MobileScannerController();
  }

  @override
  Widget build(BuildContext context) {
    return constrainedControl(
      context,
      MobileScanner(
        controller: scannerController,
        onDetect: (barcodeCapture) {
          final barcode = barcodeCapture.barcodes.first.rawValue;
          if (barcode != null) {
            widget.control.dispatchEvent("scan", {"value": barcode});
          }
        },
      ),
      widget.parent,
      widget.control,
    );
  }

  @override
  void dispose() {
    scannerController.dispose();
    super.dispose();
  }
}
