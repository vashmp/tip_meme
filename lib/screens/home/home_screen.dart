import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 130),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Leave a tip?',
                  style: TextStyle(
                    color: Color(
                        int.parse('#525354'.substring(1, 7), radix: 16) +
                            0xFF000000),
                    fontSize: 40,
                  )),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: buttonStyle(90),
                      onPressed: () {},
                      child: const Text(
                        '15 %',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: buttonStyle(90),
                      onPressed: () {},
                      child: const Text(
                        '20 %',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: buttonStyle(90),
                      onPressed: () {},
                      child: const Text(
                        '25 %',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: buttonStyle(),
                  onPressed: () {},
                  child: const Text(
                    'Custom',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ButtonStyle buttonStyle([int height = 50]) {
    return ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, height.toDouble()),
      //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      elevation: 0,
      backgroundColor: Colors.blue,
    );
  }
}
