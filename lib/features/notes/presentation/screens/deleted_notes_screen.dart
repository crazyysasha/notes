import 'package:flutter/material.dart';
import 'package:notes/features/notes/presentation/theme/theme.dart';

class DeletedNotesScreen extends StatelessWidget {
  const DeletedNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Deleted notes',
          style: NoteStyle.screenTitleStyle,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => const ListTile(),
      ),
    );
  }
}
