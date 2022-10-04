import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kButtonHeight,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.bolt_outlined,
            size: 20,
            color: Colors.white.withOpacity(.7),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Connect',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white.withOpacity(.7),
            ),
          )
        ],
      ),
    );
  }
}
