import 'package:flutter/material.dart';

class MenuModel {
  final Widget pages;
  final IconData icon;
  final String label;
  final Color color;

  MenuModel({
    required this.icon,
    required this.color,
    required this.label,
    required this.pages,
  });
}