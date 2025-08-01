import 'package:flet/flet.dart';
import 'src/create_control.dart';

void ensureInitialized() {
  registerControls("flet_mrc_scanner", createControl);
}
