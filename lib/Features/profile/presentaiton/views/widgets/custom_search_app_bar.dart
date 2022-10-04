import 'package:flutter/material.dart';
import 'custom_serach_text_field.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          const Expanded(
            child: SearchTextField(),
          ),
        ],
      ),
    );
  }
}
