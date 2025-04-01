import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class CustomTip extends StatefulWidget {
  const CustomTip({super.key});

  @override
  State<CustomTip> createState() => _CustomTipState();
}

class _CustomTipState extends State<CustomTip> {
  int _currentValue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Tip'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/cute-chatur.gif')),
            ElevatedButton(onPressed: () {}, child: Text('SEND TIPS')),
            SizedBox(height: 10),
            NumberPicker(
              value: _currentValue,
              minValue: 1, // Минимальное значение
              maxValue: 1000, // Максимальное значение
              step: 1, // Шаг прокрутки
              itemHeight: 50, // Высота одной ячейки
              axis: Axis.vertical, // Вращение по вертикали
              onChanged: (value) => setState(() => _currentValue = value),
            ),
            const Text('%'),
          ],
        ),
      ),
    );
  }
}
