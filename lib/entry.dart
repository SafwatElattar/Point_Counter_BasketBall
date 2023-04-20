import 'package:flutter/material.dart';

class PointCounter extends StatefulWidget {
  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int team_a = 0;

  int team_b = 0;

  void AddOnePoint() {
    team_a += 1;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage(
                "images/bg_counterapp.jpg",
              ),
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // left column
                    Column(
                      children: [
                        Text(
                          "Team A",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff6dd8d2),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$team_a",
                          style: TextStyle(
                            fontSize: 120,
                            color: Color(0xffffa51d),
                          ),
                        ),
                        // buttons lefts
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              fixedSize: Size(160, 50)),
                          onPressed: () {
                            setState(() {
                              team_a += 1;
                            });
                          },
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                fixedSize: Size(160, 50)),
                            onPressed: () {
                              setState(() {
                                team_a += 2;
                              });
                            },
                            child: Text(
                              "Add 2 point",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              fixedSize: Size(160, 50)),
                          onPressed: () {
                            setState(() {
                              team_a += 3;
                            });
                          },
                          child: Text(
                            "Add 3 point",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      height: 750,
                      child: VerticalDivider(
                        color: Colors.black26,
                        thickness: 2,
                        indent: 80,
                        endIndent: 80,
                      ),
                    ),
                    // second colum  right
                    Column(
                      children: [
                        Text(
                          "Team B",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff2b51fc),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$team_b",
                          style: TextStyle(
                            fontSize: 120,
                            color: Color(0xffffa51d),
                          ),
                        ),
                        // buttons right
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              fixedSize: Size(160, 50)),
                          onPressed: () {
                            setState(() {
                              team_b += 1;
                            });
                          },
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                fixedSize: Size(160, 50)),
                            onPressed: () {
                              setState(() {
                                team_b += 2;
                              });
                            },
                            child: Text(
                              "Add 2 point",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              fixedSize: Size(160, 50)),
                          onPressed: () {
                            setState(() {
                              team_b += 3;
                            });
                          },
                          child: Text(
                            "Add 3 point",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // reset button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 228, 10, 10),
                      fixedSize: Size(160, 50)),
                  onPressed: () {
                    setState(() {
                      team_a = 0;
                      team_b = 0;
                    });
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
