import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class AverageWidget extends StatelessWidget {
  final int mark;

  const AverageWidget({Key key, this.mark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.35,
      height: height * 0.2,
      constraints: BoxConstraints(
        minWidth: 200,
        minHeight: 300,
      ),
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 20,
            showLabels: false,
            showTicks: false,
            axisLineStyle: AxisLineStyle(
              thickness: 0.2,
              cornerStyle: CornerStyle.bothCurve,
              color: Theme.of(context).primaryColor.withOpacity(0.2),
              thicknessUnit: GaugeSizeUnit.factor,
            ),
            pointers: <GaugePointer>[
              RangePointer(
                value: 18.0,
                cornerStyle: CornerStyle.bothCurve,
                width: 0.2,
                sizeUnit: GaugeSizeUnit.factor,
                color: Theme.of(context).primaryColor,
              )
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                positionFactor: 0.1,
                angle: 90,
                widget: Text(
                  mark.toString(),
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
