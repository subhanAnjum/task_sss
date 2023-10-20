import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Dial extends StatelessWidget {
  const Dial({
    super.key,
    this.maximum = 100,
    required this.value,
    required this.colors,
  });
  final double maximum;
  final double value;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(axes: <RadialAxis>[
      RadialAxis(
        maximum: maximum,
        interval: 10,
        startAngle: -20,
        endAngle: 360,
        showTicks: false,
        showLabels: false,
        axisLineStyle: AxisLineStyle(thickness: 20),
        pointers: <GaugePointer>[
          RangePointer(
              value: value,
              width: 20,
              gradient: SweepGradient(colors: colors),
              enableAnimation: true,
              cornerStyle: CornerStyle.bothCurve),
        ],
      )
    ]);
  }
}
