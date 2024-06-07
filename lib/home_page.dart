import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter_app/bloc/counter_bloc.dart' as bloc;
import 'package:flutter_bloc_counter_app/cubit/counter_cubit.dart' as cubit;
import 'package:flutter_bloc_counter_app/inc_Dec_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<cubit.CounterCubit>(context);
    final counterBloc = BlocProvider.of<bloc.CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<bloc.CounterBloc, bloc.CounterState>(
                // bloc: counterBloc, 
                builder: (context, counter) {
                  return Text(
                    '${counter.counterValue}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const IncDecPage(),
            ),
          );
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
