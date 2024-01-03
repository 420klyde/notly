import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notly/components/new_note_widget.dart';
import 'package:notly/components/note_tile_widget.dart';
import 'package:notly/core/models/note_model.dart';
import 'package:notly/routes/note_detail_screen.dart';
import 'package:notly/utils/constants/colors.dart';
import 'package:notly/utils/helper_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.more_horiz, size: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'All Notes ',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Text(
                          '(${NoteModel.notes.length})',
                          style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: lightGrey),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(13),
                  Row(
                    children: [
                      Text(
                        '${DateFormat.MMMM().format(DateTime.now()).toUpperCase()} ${DateFormat.y().format(DateTime.now())}',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  verticalSpace(6),
                  Expanded(
                    child: SizedBox(
                      height: double.infinity,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: NoteModel.notes.length,
                        itemBuilder: (context, index) {
                          final note = NoteModel.notes[index];
                          return GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NoteDetailScreen(note: note))),
                            child: NoteTile(note: note),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const NewNoteWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        ],
      ),
    );
  }
}
