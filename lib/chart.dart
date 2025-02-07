import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SemiCircleChart extends StatelessWidget {
  const  SemiCircleChart({super.key});

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;

    //Values of both variables always should be less then 800 always
    final double firstVal=500;
    final double secondVal=300;

    final double value=firstVal*100/200;
    final double valueTwo=secondVal*100/200;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 410,
          child: Stack(
            children: [

              //Big Arc Circle
              Stack(
                children:[
                  //Arc
                  Transform.rotate(
                  transformHitTests:false,
                  angle: 140.15,
                  child: PieChart(
                    PieChartData(
                      startDegreeOffset: 340,
                      sectionsSpace:0,
                      centerSpaceRadius: 135,
                      sections: [

                        PieChartSectionData(
                          value: 200,
                          color: Colors.transparent,
                          radius: 20,
                          showTitle: false,
                        ),

                        //Outlined
                        PieChartSectionData(
                          value:400-value,
                          color: Colors.transparent,
                          borderSide: BorderSide(

                              color: Color.fromRGBO(0, 63,136, 0.19)),
                          radius: 20,
                          showTitle: false,
                        ),
                        //Filled
                        PieChartSectionData(
                          value: value,
                          color:  Color.fromRGBO(0, 63, 136, 1),
                          radius: 20,
                          showTitle: false,
                        ),
                        PieChartSectionData(
                          value: 200,
                          color: Colors.transparent,
                          radius: 20,
                          showTitle: false,
                        ),
                      ],
                    ),
                  ),
                ),
                  //Arrow
                  Transform.rotate(
                    transformHitTests:false,
                    angle: 140.15,
                    child: PieChart(
                      PieChartData(
                        startDegreeOffset: 340,
                        sectionsSpace:0,
                        centerSpaceRadius: 158,
                        sections: [
                          PieChartSectionData(
                            value: 200,
                            color: Colors.transparent,
                            radius: 2,
                            showTitle: false,
                          ),
                          //Outlined
                          PieChartSectionData(
                            value:400-value,
                            color: Colors.transparent,
                            borderSide: BorderSide(color: Colors.transparent),
                            radius: 2,
                            showTitle: false,
                          ),
                          //Filled
                          PieChartSectionData(
                            value: value,
                            color:  Color.fromRGBO(0, 63, 136, 1),
                            radius: 2,
                            showTitle: false,
                          ),
                          PieChartSectionData(
                            value: 200,
                            color: Colors.transparent,
                            radius: 2,
                            showTitle: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //Small Arc Circle
              Stack(
                children:[
                  //Arc
                  Transform.rotate(
                    transformHitTests:false,
                    angle: 140.15,
                    child: PieChart(
                      PieChartData(
                        startDegreeOffset: 340,
                        sectionsSpace:0,
                        centerSpaceRadius: 100,
                        sections: [
                          PieChartSectionData(
                            value: 200,
                            color: Colors.transparent,
                            radius: 20,
                            showTitle: false,
                          ),
                          //Outlined
                          PieChartSectionData(
                            value:valueTwo,
                            color: Colors.green,
                            radius: 20,
                            showTitle: false,
                          ),
                          //Filled
                          PieChartSectionData(
                            value: 400-valueTwo,
                            color:  Colors.transparent,
                            borderSide: BorderSide(
                                color: Color.fromRGBO(0, 63,136, 0.19)
                            ),
                            radius: 20,
                            showTitle: false,
                          ),
                          PieChartSectionData(
                            value: 200,
                            color: Colors.transparent,
                            radius: 20,
                            showTitle: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Arrow
                  Transform.rotate(
                    transformHitTests:false,
                    angle: 140.15,
                    child: PieChart(
                      PieChartData(
                        startDegreeOffset: 340,
                        sectionsSpace:0,
                        centerSpaceRadius: 125,
                        sections: [
                          PieChartSectionData(
                            value: 200,
                            color: Colors.transparent,
                            radius: 2,
                            showTitle: false,
                          ),
                          //Outlined
                          PieChartSectionData(
                            value:valueTwo,
                            color: Colors.green,
                            radius: 2,
                            showTitle: false,
                          ),
                          //Filled
                          PieChartSectionData(
                            value: 400-valueTwo,
                            color:  Colors.transparent,
                            radius: 2,
                            showTitle: false,
                          ),
                          PieChartSectionData(
                            value: 200,
                            color: Colors.transparent,
                            radius: 2,
                            showTitle: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //Text in Chart
              // Column()

              // Lines pointing towards the chart
              //_line()
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