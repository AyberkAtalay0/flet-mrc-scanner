import 'package:flet/flet.dart';
import 'flet_mrc_scanner.dart';

CreateControlFactory createControl = (args) {
  if (args.control.type == "flet_mrc_scanner") {
    return FletMrcScannerControl(parent: args.parent, control: args.control);
  }
  return null;
};
