import 'package:flutter/material.dart';

class NoteForm extends StatefulWidget {
  final void Function(String title, String content)? onPayloadChanged;

  final String title;

  final String content;

  final bool enabled;

  const NoteForm({
    super.key,
    this.onPayloadChanged,
    this.title = '',
    this.content = '',
    this.enabled = true,
  });

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  late final TextEditingController _titleController;
  late final TextEditingController _contentController;

  @override
  void initState() {
    _titleController = TextEditingController()..text = widget.title;
    _contentController = TextEditingController()..text = widget.content;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: () => widget.onPayloadChanged?.call(
        _titleController.text,
        _contentController.text,
      ),
      child: Column(
        children: [
          TextFormField(
            controller: _titleController,
            enabled: widget.enabled,
          ),
          TextFormField(
            controller: _contentController,
            enabled: widget.enabled,
          ),
        ],
      ),
    );
  }
}
