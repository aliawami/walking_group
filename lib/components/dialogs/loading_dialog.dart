import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void showLoadingDialog({required BuildContext context}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => SpinKitSpinningLines(
            lineWidth: 9,
            color: Colors.indigo.shade600,
            size: 80,
            itemCount: 9,
          ));
}

Widget loadingIndicator = SpinKitSpinningLines(
  lineWidth: 5,
  color: Colors.blueGrey.shade600,
  size: 90,
);
