import 'package:flutter/material.dart';
import 'package:todoapp/widgets/custom_add_buttom.dart';
import 'package:todoapp/widgets/custom_text_field.dart';

class CustomTaskInputBar extends StatelessWidget {
  const CustomTaskInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomTextField(
          hint: 'Add New TODO Item',
        ),
        CustomAddButtom(),
      ],
    );
  }
}
