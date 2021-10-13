import 'package:flutter/material.dart';

class ImageSizeHelper {
  late double height;
  late double width;

  ImageSizeHelper(double _height, double _width) {
    var screen = MediaQueryData.fromWindow(WidgetsBinding.instance!.window);

    width = screen.size.width < _width ? screen.size.width : _width;
    height = screen.size.width < _width ? _height * screen.size.width / _width : _height;
  }
}