import 'package:flutter/material.dart';

class BndBox extends StatelessWidget {
  final List<dynamic> results;
  final int previewH;
  final int previewW;
  final double screenH;
  final double screenW;
  final String model;

  BndBox(this.results, this.previewH, this.previewW, this.screenH, this.screenW,
      this.model);

  @override
  Widget build(BuildContext context) {
    List<Widget> _renderStrings() {
      double offset = -10;
      return results.map((re) {
        offset = offset + 20;
        return Positioned(
          left: screenW / 2 - 100,
          top: offset,
          width: screenW,
          height: screenH,
          child: Text(
            "${re["label"]} ${(re["confidence"] * 100).toStringAsFixed(0)}%",
            style: TextStyle(
              color: Color.fromRGBO(37, 213, 253, 1.0),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }).toList();
    }
    return Stack(
      children: _renderStrings(),
    );
  }
}
