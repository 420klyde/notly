import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notly/components/white_shadow_icon.dart';
import 'package:notly/core/models/note_model.dart';
import 'package:notly/utils/constants/edge_insets.dart';
import 'package:notly/utils/helper_widgets.dart';

class NoteDetailScreen extends StatelessWidget {
  const NoteDetailScreen({super.key, required this.note});
  final Note note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        elevation: 1,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //share back button

                  WhiteShadowIcon(
                      icon: const Icon(Icons.arrow_back_ios_new_rounded,
                          size: 13),
                      onPressed: () => Navigator.pop(context)),

                  WhiteShadowIcon(
                      icon: const Icon(Icons.share, size: 13),
                      onPressed: () {}),
                ],
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: noteBodyPadding,
          children: [
            verticalSpace(30),
            //arrow back button && share note button

            //title of the note
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(note.title,
                  style: Theme.of(context).textTheme.headlineLarge),
            ),

            verticalSpace(10), //vertical space

            //date note was taken &&
            Row(
              children: [
                Text(DateFormat.yMd().format(note.date)),
              ],
            ),

            verticalSpace(10),

            //body of the note
            Text(
              note.body,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
