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
    return Scaffold(
      body: Form(
        onChanged: () => widget.onPayloadChanged?.call(
          _titleController.text,
          _contentController.text,
        ),
        child: SafeArea(
          maintainBottomViewPadding: true,
          child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                  hintText: 'Enter title of note...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                controller: _titleController,
                enabled: widget.enabled,
                // maxLines: 2,
              ),
              Flexible(
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: IntrinsicHeight(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter content of note...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 24),
                      ),
                      controller: _contentController,
                      enabled: widget.enabled,
                      maxLines: null,
                    ),
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
