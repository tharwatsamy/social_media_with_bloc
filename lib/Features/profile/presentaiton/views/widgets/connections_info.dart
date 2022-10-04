import 'package:flutter/material.dart';

import 'connection_item.dart';

class ConnectionsInfo extends StatelessWidget {
  const ConnectionsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ConnectionItem(),
        SizedBox(
          width: 12,
        ),
        ConnectionItem(),
        SizedBox(
          width: 12,
        ),
        ConnectionItem(),
      ],
    );
  }
}
