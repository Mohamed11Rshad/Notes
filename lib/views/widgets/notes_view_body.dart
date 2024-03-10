import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custtom_app_bar.dart';
import 'package:notes/views/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}
