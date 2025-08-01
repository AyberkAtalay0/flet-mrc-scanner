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
  late MobileScannerController controller;

  @override
  void initState() {
    super.initState();
    controller = MobileScannerController();
  }

  @override
  Widget build(BuildContext context) {
    return constrainedControl(
      context,
      MobileScanner(
        controller: controller,
        onDetect: (capture) {
          final value = capture.barcodes.first.rawValue;
          if (value != null) {
            widget.control.dispatchEvent("scan", {"value": value});
          }
        },
      ),
      widget.parent,
      widget.control,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
