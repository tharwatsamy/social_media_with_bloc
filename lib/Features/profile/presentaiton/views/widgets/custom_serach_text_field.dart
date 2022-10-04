import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          prefixIconColor: kPrimaryColor,
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: kPrimaryColor,
              size: 16,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(),
          border: buildBorder(),
          disabledBorder: buildBorder(),
          enabledBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        32,
      ),
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(.5),
      ),
    );
  }
}
