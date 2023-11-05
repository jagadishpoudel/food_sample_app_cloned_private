import 'package:flutter/material.dart';
import 'package:healthy_food_mobile_app/screens/inner_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  right: 20,
                  top: 30,
                  bottom: 30,
                  left: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Hello Jagadish",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "images/Polish_20220910_154232325 (1).jpg"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CircularPercentIndicator(
                      radius: 130.0,
                      lineWidth: 16.0,
                      percent: 0.65,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.electric_bolt,
                            color: Colors.blueGrey[100],
                            size: 30,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "617",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 42,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "REMAINING",
                            style: TextStyle(
                              color: Colors.blueGrey[200],
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      // progressColor: Colors.green,
                      linearGradient: const LinearGradient(colors: 
                  [
                    Color.fromARGB(255, 152, 196, 232),
                    Color.fromARGB(255, 135, 192, 239),
                    Color.fromARGB(255, 102, 177, 238),
                    Color.fromARGB(255, 76, 161, 231),
                    Color.fromARGB(255, 49, 153, 237),
                    Color.fromARGB(255, 10, 132, 232),
                  ]),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          child: Column(
                            children: [
                              const Text(
                                "1383",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "CONSUMED",
                                style: TextStyle(
                                  color: Colors.blueGrey[200],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              const Text(
                                "471",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "BURNED",
                                style: TextStyle(
                                  color: Colors.blueGrey[200],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              const Text(
                                "912",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "NET",
                                style: TextStyle(
                                  color: Colors.blueGrey[200],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "Popular",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const InnerScreen(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  "images/low-carb-cinnamon-vanilla-protein-granola-recipe-scaled.jpg"),
                              radius: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                "Jagadish's gorgeous granola breakfast.",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "images/low-carb-cinnamon-vanilla-protein-granola-recipe-scaled.jpg"),
                            radius: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Jagadish's gorgeous granola breakfast.",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "images/low-carb-cinnamon-vanilla-protein-granola-recipe-scaled.jpg"),
                            radius: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Jagadish's gorgeous granola breakfast.",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "images/low-carb-cinnamon-vanilla-protein-granola-recipe-scaled.jpg"),
                            radius: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Jagadish's gorgeous granola breakfast.",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "images/low-carb-cinnamon-vanilla-protein-granola-recipe-scaled.jpg"),
                            radius: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Jagadish's gorgeous granola breakfast.",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
