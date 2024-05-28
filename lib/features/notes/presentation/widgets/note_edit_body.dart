import 'package:flutter/cupertino.dart';
import 'package:notes/features/notes/presentation/widgets/note_form.dart';

class NoteEditBody extends StatelessWidget {
  NoteEditBody({
    super.key,
    required this.loading,
    required this.title,
    required this.content,
    this.onPayloadChanged,
  });

  final bool loading;

  final String title;
  final String content;

  final FocusNode focusNode = FocusNode();

  final Function(String title, String content)? onPayloadChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        focusNode.requestFocus();
      },
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              scrollBehavior: const CupertinoScrollBehavior(),
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  fillOverscroll: true,
                  child: NoteForm(
                    title: title,
                    content: content,
                    onPayloadChanged: onPayloadChanged,
                    enabled: !loading,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
