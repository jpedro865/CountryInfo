import 'package:countryinfo/countryscreen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var i = 0; i < 10; i++)
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: StartButton(text: 'hello'),
          )
      ],
    );
  }
}

class StartButton extends StatelessWidget {
  final String text;
  const StartButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromHeight(65),
          backgroundColor: const Color.fromRGBO(54, 69, 79, 1)),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const CountryScreen()));
      },
      child: Row(
        children: [
          Text(text),
        ],
      ),
    );
  }
}
