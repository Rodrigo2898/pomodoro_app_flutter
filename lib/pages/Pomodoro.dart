import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/components/Cronometro.dart';
import 'package:pomodoro_app/components/EntradaTempo.dart';
import 'package:pomodoro_app/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Observer(builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(
                    titulo: 'Trabalho', 
                    valor: store.tempoTrabalho,
                    inc: store.incrementarTempoTrabalho,
                    dec: store.decrementarTempoTrabalho,
                  ),
                  EntradaTempo(
                    titulo: 'Descanso', 
                    valor: store.tempoDescanso,
                    inc: store.incrementarTempoDescanso,
                    dec: store.decrementarTempoDescanso,
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}