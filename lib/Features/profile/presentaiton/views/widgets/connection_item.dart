import 'package:flutter/material.dart';
import 'package:social_media_ui/styles.dart';

class ConnectionItem extends StatelessWidget {
  const ConnectionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            '100+',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            'Conncetions',
            maxLines: 1,
            style: Styles.body6,
          ),
        ],
      ),
    );
  }
}
