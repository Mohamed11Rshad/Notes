import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_text_field.dart';
import 'package:notes/views/widgets/custtom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(hintText: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: "Content",
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}
