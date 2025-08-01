import 'package:flet/flet.dart';
import 'flet_mrc_scanner.dart';

class Extension extends FletExtension {
  @override
  FletService? createService(Control control) {
    switch (control.type) {
      case "flet_mrc_scanner":
        return FletMrcScannerService(control: control);
      default:
        return null;
    }
  }
}

