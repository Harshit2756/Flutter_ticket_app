import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/text_expansion_controller.dart';

class ReadMoreText extends StatelessWidget {
  final String text;
  final int trimLength;

  const ReadMoreText(this.text, {super.key, this.trimLength = 600});

  @override
  Widget build(BuildContext context) {
    final TextExpansionController controller =
        Get.put(TextExpansionController());
    final String displayText = controller.isExpanded.value
        ? text
        : text.length > trimLength
            ? '${text.substring(0, trimLength)}...'
            : text;

    return Obx(
      () => Column(
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
                if (!controller.isExpanded.value && text.length > trimLength)
                  TextSpan(
                    text: " Read More",
                    style: TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        controller.toggleExpansion();
                      },
                  ),
              ],
            ),
          ),
          if (controller.isExpanded.value)
            GestureDetector(
              onTap: () {
                controller.toggleExpansion();
              },
              child: Text(
                "Read Less",
                style: TextStyle(color: Colors.blue),
              ),
            ),
        ],
      ),
    );
  }
}
