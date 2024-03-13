import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/notes_app.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNotesBox);
  Hive.registerAdapter(
    NoteModelAdapter(),
  );
  runApp(const NotesApp());
}
