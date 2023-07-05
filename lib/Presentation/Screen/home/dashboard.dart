import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:testproject/Presentation/Screen/home/briefprofile.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key});

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  final List<ChartData> chartData = [
    ChartData('Dart', 40, 30, 40, 50),
    ChartData('Python', 30, 20, 10, 16),
    ChartData('React', 20, 20, 10, 22),
    ChartData('Firebase', 25, 14, 22, 44),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dash Board'),
        backgroundColor: Colors.white70,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 20,
            left: 15,
            right: 15,
            child: Container(
              width: 350,
              height: 275,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xF5A1F8FF),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 68, // Adjust the radius as needed
                      backgroundImage: AssetImage('assets/images/3.jpeg'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 230,
                    height: 250,
                    child: Column(
                      children: [
                        Text(
                          " A Self motivated and tech Enthusiast guy who desire to put programming skills to advance the well-being of the community and the public . ",
                          style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          maxLines: 8,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BriefProfile(),
                              ),
                            );
                          },
                          child: Text(
                            'Read More',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 25),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 310,
            left: 15,
            right: 15,
            child: Container(
                width: 350,
                height: 450,
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  series: [
                    StackedColumnSeries(
                        dataSource: chartData,
                        xValueMapper: (ChartData ch, _) => ch.x,
                        yValueMapper: (ChartData ch, _) => ch.y1)
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  final String x;
  final int y1;
  final int y2;
  final int y3;
  final int y4;

  ChartData(this.x, this.y1, this.y3, this.y2, this.y4);
}
