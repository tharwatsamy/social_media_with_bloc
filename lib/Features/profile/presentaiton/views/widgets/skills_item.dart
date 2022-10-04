import 'package:flutter/material.dart';

class SkillsItem extends StatelessWidget {
  const SkillsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.withOpacity(.3)),
      ),
      child: const Center(
        child: Text(
          '# design',
        ),
      ),
    );
  }
}
