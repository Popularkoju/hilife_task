import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

textOne(String message) {
  Text(
    message,
    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}

textTwo(String message) {
  Text(
    message,
    style: const TextStyle(fontSize: 16),
  );
}
