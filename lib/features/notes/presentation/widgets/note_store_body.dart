import 'package:flutter/cupertino.dart';
import 'package:notes/features/notes/presentation/widgets/note_form.dart';

class NoteStoreBody extends StatelessWidget {
  final bool loading;
  final String? failureMessage;
  const NoteStoreBody({
    super.key,
    this.loading = false,
    this.failureMessage,
    this.onPayloadChanged,
  });
  final void Function(String title, String content)? onPayloadChanged;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          fillOverscroll: false,
          child: NoteForm(
            onPayloadChanged: onPayloadChanged,
            enabled: !loading,
          ),
        )
      ],
    );
  }
}
