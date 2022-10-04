import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/styles.dart';

class ConnectionItem extends StatelessWidget {
  const ConnectionItem({Key? key, required this.text, required this.value})
      : super(key: key);

  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
          AutoSizeText(
            text,
            maxLines: 1,
            style: Styles.body6,
          ),
        ],
      ),
    );
  }
}
