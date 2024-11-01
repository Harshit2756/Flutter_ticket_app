import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_app/controller/riverpod/text_expansion_provider.dart';

class ReadMoreText extends ConsumerWidget {
  final String text;
  final int trimLength;

  const ReadMoreText(this.text, {super.key, this.trimLength = 600});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var provider = ref.watch(textExpansionNotifierProvider);
    final String displayText = provider
        ? text
        : text.length > trimLength
            ? '${text.substring(0, trimLength)}...'
            : text;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: displayText,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            children: <TextSpan>[
              if (!provider && text.length > trimLength)
                TextSpan(
                  text: " Read More",
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      ref
                          .watch(textExpansionNotifierProvider.notifier)
                          .toggleExpansion(provider);
                    },
                ),
            ],
          ),
        ),
        if (provider)
          GestureDetector(
            onTap: () {
              ref
                  .watch(textExpansionNotifierProvider.notifier)
                  .toggleExpansion(provider);
            },
            child: Text(
              "Read Less",
              style: TextStyle(color: Colors.blue),
            ),
          ),
      ],
    );
  }
}
