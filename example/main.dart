import 'package:canny_edge_detection/canny_edge_detection.dart';
import 'dart:io';
import 'package:image/image.dart';

void main() {
  Image? image = decodeImage(File("input.png").readAsBytesSync())!;
  canny(image);
  File("output.png").writeAsBytesSync(encodePng(image));
}
