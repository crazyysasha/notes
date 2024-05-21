import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('notes'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          onTap: () => context.push('/edit'),
          title: Text('data'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/edit');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
