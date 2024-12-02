// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class Topo extends StatefulWidget {
  const Topo({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Topo> createState() => _TopoState();
}

class _TopoState extends State<Topo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 60,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 390,
              height: 60,
              decoration: BoxDecoration(color: Color(0xFF003ADB)),
            ),
          ),
          Positioned(
            left: 146,
            top: 19,
            child: Container(
              width: 97,
              height: 22.81,
              child: Stack(
                children: [
                  Positioned(
                    left: 42.95,
                    top: 4,
                    child: Container(
                      width: 54.05,
                      height: 18.81,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blubem-0gk95u/assets/5diouvb3dlup/blubem-logo-aqua-neve-transparente.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.black.withOpacity(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
