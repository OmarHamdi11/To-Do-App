import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/widgets/custom_app_bar.dart';
import 'package:todoapp/widgets/custom_task_input_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              icon: Icons.search,
              title: 'To Do',
            ),
            SizedBox(height: 30),
            CustomTaskInputBar(),
          ],
        ),
      ),
    );
  }
}
