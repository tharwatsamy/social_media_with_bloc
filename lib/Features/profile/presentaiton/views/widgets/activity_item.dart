import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 25,
          ),
          title: Text('Ersad Baspag'),
          subtitle: Text('2 hours ago'),
          trailing: Icon(
            Icons.more_horiz,
          ),
        ),
        const Text(
          'Hello EveryOne',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: AspectRatio(
            aspectRatio: 5 / 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kPrimaryColor,
              ),
              width: double.infinity,
            ),
          ),
        ),
      ],
    );
  }
}
