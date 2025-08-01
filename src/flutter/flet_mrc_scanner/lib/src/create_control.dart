import 'package:flet/flet.dart';
import 'flet_mrc_scanner.dart';

CreateControlFactory createControl = (ControlType type) {
  if (type.type == "mrcscanner") {
    return (parent, control) => FletMrcScannerControl(parent: parent, control: control);
  }
  return null;
};
