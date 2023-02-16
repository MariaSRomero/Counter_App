import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen ({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 10,
      ),
      backgroundColor: const Color.fromARGB(255, 208, 173, 224),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Número de taps:',
              style: estiloTexto,
              ),
            Text(
              '$contador',
            style: estiloTexto,
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomFloatingActionButton());
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 115, 8, 177),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        onPressed: null,
        child: const Icon(Icons.exposure_minus_1), 
    ),
        FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 115, 8, 177),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        onPressed: null,
        child: const Icon(Icons.restart_alt), 
    ),
        FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 115, 8, 177),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        onPressed: null,
        child: const Icon(Icons.exposure_plus_1), 
    ),
      ],
    );
  }
}