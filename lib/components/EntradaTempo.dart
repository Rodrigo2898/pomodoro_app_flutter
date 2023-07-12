import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;
  
  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), backgroundColor: Colors.red,
                padding: const EdgeInsets.all(15),
              ), 
              child: const Icon(
                Icons.arrow_downward, 
                color: Colors.white,
              ),
            ),
            Text(
              '$valor min',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            ElevatedButton(
              onPressed: inc,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), backgroundColor: Colors.red,
                padding: const EdgeInsets.all(15),
              ), 
              child: const Icon(
                Icons.arrow_upward, 
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}