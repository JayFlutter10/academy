import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math' as math;

import 'package:flutter_application_1/academy/view/certificate_view.dart';

class SemiCircleChart extends StatelessWidget {
   SemiCircleChart({super.key});
  final double value=6000/100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 300,
        child: Transform.rotate(
          angle: 140.159,
          child: Stack(
            children: [
              PieChart(
                PieChartData(
                  startDegreeOffset: 180,
                  sectionsSpace:0,
                  centerSpaceRadius: 125,
                  sections: [
                    PieChartSectionData(
                      value: 38.3,
                      color: Color.fromRGBO(0, 63, 136, 1),
                      radius: 20,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 100,
                      color: Colors.transparent,
                      radius: 10,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 61.3,
                      color: Colors.transparent,
                      borderSide: BorderSide(color: Color.fromRGBO(0, 63,136, 0.19)),
                      radius: 20,
                      showTitle: false,
                    ),
                  ],
                ),
              ),
              PieChart(
                PieChartData(
                  startDegreeOffset: 130,
                  sectionsSpace: 0,
                  centerSpaceRadius: 95,
                  sections: [
                    PieChartSectionData(
                      value: 65,
                      color: Colors.transparent,
                      borderSide: BorderSide(color: Color.fromRGBO(10, 200, 10, 0.11)),
                      radius: 20,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 100,
                      color: Colors.transparent,
                      radius: 10,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 32.8,
                      color: Color.fromRGBO(3, 118, 3, 1),
                      radius: 20,
                      showTitle: false,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 90,
                right: 110,
                bottom: 70,
                top: 70,
                child: Transform.rotate(
                  angle:60.911,
                  child: Column(
                    children: [
                      Text(
                        'Returns',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '4 Lakh',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Leads',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '120 Leads',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Lines connecting to the
              Positioned(
                top: 210,
                left: 135,
                child: Transform.rotate(
                  angle: 300.35,
                  child: _line(),
                ),
              ),
              Positioned(
                top: 130,

                left: 70,
                child: Transform.rotate(
                  angle: 145.1,
                  child: _line()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget _line(){
  return Row(
    children: [
      Icon(Icons.circle,size: 6,),
      Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black),height: 1,width: 50,),
    ],
  );
}