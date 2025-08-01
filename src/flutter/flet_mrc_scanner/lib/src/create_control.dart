import 'package:flet/flet.dart';
import 'flet_mrc_scanner.dart';

CreateControlFactory createControl = (controlType) {
  if (controlType.type == "flet_mrc_scanner") {
    return (parent, control) => FletMrcScannerControl(parent: parent, control: control);
  }
  return null;
};
