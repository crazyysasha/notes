import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pull_down_button/pull_down_button.dart';

class PullDownButtonWithEntityTitle<T> extends StatelessWidget {
  final Function(T? value)? onSelected;

  final Function(T? entity) titleTextBuilder;
  final String headerTitleText;
  final T? entity;

  final List<T> entities;
  final List<PullDownMenuEntry> additionalItems;
  const PullDownButtonWithEntityTitle({
    super.key,
    required this.titleTextBuilder,
    this.onSelected,
    this.entity,
    this.headerTitleText = '',
    this.entities = const [],
    this.additionalItems = const [],
  });

  @override
  Widget build(BuildContext context) {
    return PullDownButton(
      onCanceled: () {
        if (kDebugMode) {
          print('cancelled');
        }
      },
      itemBuilder: (context) {
        return [
          PullDownMenuHeader(
            leading: const Icon(CupertinoIcons.bars),
            title: headerTitleText,
          ),
          PullDownMenuItem.selectable(
            onTap: () => onSelected?.call(null),
            title: titleTextBuilder(null),
            selected: entity == null,
          ),
          for (final e in entities)
            PullDownMenuItem.selectable(
              onTap: () => onSelected?.call(e),
              title: titleTextBuilder(e),
              selected: entity == e,
            ),
          for (final w in additionalItems) w,
        ];
      },
      buttonBuilder: (context, showMenu) => TextButton(
        onPressed: showMenu,
        onLongPress: showMenu,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              titleTextBuilder(entity),
            ),
            const SizedBox.square(
              dimension: 12,
            ),
            const Icon(
              CupertinoIcons.ellipsis_circle,
            ),
          ],
        ),
      ),
    );
  }
}
