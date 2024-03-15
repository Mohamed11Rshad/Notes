import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/custom_text_field.dart';
import 'package:notes/views/widgets/custtom_app_bar.dart';
import 'package:notes/views/widgets/edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: ListView(
              children: [
                CustomTextField(
                  onChanged: (value) {
                    title = value;
                  },
                  hintText: widget.note.title,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  onChanged: (value) {
                    content = value;
                  },
                  hintText: widget.note.content,
                  maxLines: 7,
                ),
                const SizedBox(
                  height: 16,
                ),
                EditNoteColorsList(
                  note: widget.note,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
