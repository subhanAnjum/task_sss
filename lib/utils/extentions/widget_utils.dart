import 'package:flutter/material.dart';

extension WidgetUtils on num {
  Widget get vertical {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget get horizontal {
    return SizedBox(
      width: toDouble(),
    );
  }
}
