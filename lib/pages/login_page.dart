import 'package:boilerplate/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      create: (_) => CounterProvider(),
      builder: (context, _) => Scaffold(
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 2,
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    context.read<CounterProvider>().decrement();
                  },
                  child: Ink(
                    padding: const EdgeInsets.all(2),
                    child: const Icon(Icons.remove),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Consumer<CounterProvider>(
                builder: (context, state, _) =>
                    Text('${state.counter}'),
              ),
              const SizedBox(width: 8),
              Material(
                elevation: 2,
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    context.read<CounterProvider>().increment();
                  },
                  child: Ink(
                    padding: const EdgeInsets.all(2),
                    child: const Icon(Icons.add),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
