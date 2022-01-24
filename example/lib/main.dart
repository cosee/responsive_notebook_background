import 'package:flutter/material.dart';
import 'package:responsive_notebook_background_example/pages/custom.dart';
import 'package:responsive_notebook_background_example/pages/lined.dart';
import 'package:responsive_notebook_background_example/pages/grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ResponsiveNotebookBackground demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('NotebookBackground'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Lined',
              ),
              Tab(
                text: 'Squared',
              ),
              Tab(
                text: 'Custom',
              )
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              ExampleLined(),
              ExampleSquared(),
              ExampleCustom(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: const SizedBox.shrink(),
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
