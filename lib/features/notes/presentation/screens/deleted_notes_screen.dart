import 'package:flutter/material.dart';

class DeletedNotesScreen extends StatelessWidget {
  const DeletedNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('deleted notes'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(),
      ),
    );
  }
}
