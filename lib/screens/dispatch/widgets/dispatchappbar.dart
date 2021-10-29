import 'package:flutter/material.dart';

class DispatchAppBar extends StatelessWidget {
  const DispatchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back, size: 30)),
            ),
            const SizedBox(width: 25),
            const Text(
              "Dispatch",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
