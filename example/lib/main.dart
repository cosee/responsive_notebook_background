import 'package:flutter/material.dart';
import 'package:responsive_notebook_background_example/pages/custom.dart';
import 'package:responsive_notebook_background_example/pages/grid.dart';
import 'package:responsive_notebook_background_example/pages/lined.dart';
import 'package:responsive_notebook_background_example/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ResponsiveNotebookBackground demo',
      theme: CustomTheme.theme(context),
      home: const _Home(),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home();

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
                text: 'Grid',
              ),
              Tab(
                text: 'Custom',
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              ExampleLined(),
              ExampleGrid(),
              ExampleCustom(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).colorScheme.primary,
          child: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
