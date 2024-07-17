import 'package:flutter/material.dart';
import 'package:presentation/app/root/bindings/root_binding.dart';
import 'package:presentation/main_screen.dart';


void main() {
  runApp(const MainScreen());

  RootBinding().dependencies();
}