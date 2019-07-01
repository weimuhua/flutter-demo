import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/data/counter_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterModel counter = Provider.of<CounterModel>(context);

    return new Scaffold(
        appBar: AppBar(title: Text('Provider Page')),
        body: Center(
            child: Text(
          'You hit me: ${counter.value} times',
          style: Theme.of(context).textTheme.display1,
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () => counter.increment(),
          child: Icon(Icons.add),
        ));
  }
}
