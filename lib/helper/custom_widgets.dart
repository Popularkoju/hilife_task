import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RowOd extends StatelessWidget {
  final String? string;
  final String? string1;
  RowOd(this.string, this.string1);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(string!,
            style: const TextStyle(
              fontSize: 16,
            )),
        Text(string1!,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
      ],
    );
  }
}

class RowAP extends StatelessWidget {
  final String? string;
  final String? string1;
  RowAP(this.string, this.string1);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(string!,
            style: const TextStyle(
              fontSize: 16,
            )),
        Text(string1!,
            style: const TextStyle(
              fontSize: 16,
            ))
      ],
    );
  }
}

class RowDispatch extends StatelessWidget {
  final String? string;
  final String? string1;
  RowDispatch(this.string, this.string1);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(string!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text(string1!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
      ],
    );
  }
}

class ContainerOrder extends StatelessWidget {
  final String? string;
  ContainerOrder(this.string);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 31,
        color: Colors.blue[400],
        width: double.infinity,
        child: Center(
          child: Text(string!,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ));
  }
}
