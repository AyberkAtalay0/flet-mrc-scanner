import 'package:flet/flet.dart';
import 'flet_mrc_scanner.dart';

CreateControlFactory createControl = (ControlType type) {
  if (type.type == "flet_mrc_scanner") {
    return (parent, control) => FletMrcScannerControl(parent: parent, control: control);
  }
  return null;
};
