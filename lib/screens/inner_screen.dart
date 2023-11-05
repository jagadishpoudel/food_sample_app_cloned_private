import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InnerScreen extends StatefulWidget {
  const InnerScreen({super.key});

  @override
  State<InnerScreen> createState() => _InnerScreenState();
}

class _InnerScreenState extends State<InnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 28,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Card(
                    child: Column(
                      children: [
                        const Text(
                          "30m",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "COOKS IN",
                          style: TextStyle(color: Colors.blueGrey[600]),
                        ),
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                        "images/low-carb-cinnamon-vanilla-protein-granola-recipe-scaled.jpg"),
                    radius: 120,
                  ),
                  Card(
                    child: Column(
                      children: [
                        const Text(
                          "30m",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "COOKS IN",
                          style: TextStyle(color: Colors.blueGrey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                "Jagadish's gorgeous granola breakfast",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                "We don't really eat bowlfuls of it, but instead use it to sprinkle on top of yoghurt to give it a bit of sweetness and crunch.",
                style: TextStyle(fontSize: 20, color: Colors.blueGrey[700]),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.30,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "CAL",
                          style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 17,
                          ),
                        ),
                        const Text(
                          "213",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    progressColor: Colors.blue,
                  ),
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.30,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FAT",
                          style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 17,
                          ),
                        ),
                        const Text(
                          "12g",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    progressColor: Colors.blue,
                  ),
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.30,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "CARBS",
                          style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 17,
                          ),
                        ),
                        const Text(
                          "34g",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    progressColor: Colors.blue,
                  ),
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.30,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "PROT",
                          style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 17,
                          ),
                        ),
                        const Text(
                          "14",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    progressColor: Colors.blue,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  gradient: const LinearGradient(colors: 
                  [
                    Color.fromARGB(255, 135, 192, 239),
                    Color.fromARGB(255, 102, 177, 238),
                    Color.fromARGB(255, 76, 161, 231),
                    Color.fromARGB(255, 49, 153, 237),
                    Colors.blue,
                  ]
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.attach_money_outlined, color: Colors.white,),
                    Text("/Add to card", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18, color: Colors.white,
                    ),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
