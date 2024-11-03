import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/controller/bloc/readmore/readme_events.dart';

import '../../../controller/bloc/readmore/readmore_bloc.dart';
import '../../../controller/bloc/readmore/readmore_states.dart';

class ReadMoreText extends StatelessWidget {
  final String text;
  final int trimLength;

  const ReadMoreText(this.text, {super.key, this.trimLength = 650});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextExpansionBloc, TextExpansionState>(
      builder: (context, state) {
        if (state is IsExpandedState) {
          var isExpanded = state.isExpanded;

          final String displayText = isExpanded
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
                    if (!isExpanded && text.length > trimLength)
                      TextSpan(
                        text: " Read More",
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // ref
                            //     .watch(textExpansionNotifierProvider.notifier)
                            //     .toggleExpansion(isExpanded);
                            context
                                .read<TextExpansionBloc>()
                                .add(IsExpandedEvent(!isExpanded));
                          },
                      ),
                  ],
                ),
              ),
              if (isExpanded)
                GestureDetector(
                  onTap: () {
                    // ref
                    //     .watch(textExpansionNotifierProvider.notifier)
                    //     .toggleExpansion(isExpanded);
                    context
                        .read<TextExpansionBloc>()
                        .add(IsExpandedEvent(!isExpanded));
                  },
                  child: Text(
                    "Read Less",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }
}
