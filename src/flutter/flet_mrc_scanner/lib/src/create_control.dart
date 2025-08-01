import 'package:flet/flet.dart';

import 'flet_mrc_scanner.dart';

CreateControlFactory createControl = (CreateControlArgs args) {
  switch (args.control.type) {
    case "flet_mrc_scanner":
      return FletMrcScannerControl(
        parent: args.parent,
        control: args.control,
      );
    default:
      return null;
  }
};

void ensureInitialized() {
  // nothing to initialize
}
