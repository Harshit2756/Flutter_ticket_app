import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ReadMoreText extends StatefulWidget {
  final String text;
  final int trimLength;

  const ReadMoreText(this.text, {super.key, this.trimLength = 600});

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final String displayText = isExpanded
        ? widget.text
        : widget.text.length > widget.trimLength
            ? '${widget.text.substring(0, widget.trimLength)}...'
            : widget.text;

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
              if (!isExpanded && widget.text.length > widget.trimLength)
                TextSpan(
                  text: " Read More",
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                ),
            ],
          ),
        ),
        if (isExpanded)
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
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
