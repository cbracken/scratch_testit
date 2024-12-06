import 'dart:io';
import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  return await integrationDriver(
    onScreenshot: (
      String name,
      List<int> imageBytes, [
      Map<String, Object?>? args,
    ]) async {
      final File image = File('$name.png');
      image.writeAsBytesSync(imageBytes);
      // Return false if the screenshot is invalid.
      return true;
    },
  );
}
