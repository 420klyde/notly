import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notly/components/white_shadow_icon.dart';
import 'package:notly/utils/constants/colors.dart';
import 'package:notly/utils/constants/edge_insets.dart';
import 'package:notly/utils/helper_widgets.dart';

class AddNewNoteScreen extends StatefulWidget {
  const AddNewNoteScreen({super.key});

  @override
  State<AddNewNoteScreen> createState() => _AddNewNoteScreenState();
}

class _AddNewNoteScreenState extends State<AddNewNoteScreen> {
  final QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        elevation: 1,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: WhiteShadowIcon(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 13),
                  onPressed: () => Navigator.pop(context)),
            ),
          ],
        ),
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 13.0),
              child: TextField(
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 20),
                decoration: const InputDecoration(
                  hintText: 'How your note dey called?',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            verticalSpace(10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: bodyPadding,
                child: Row(
                  children: [
                    QuillSimpleToolbar(
                      configurations: QuillSimpleToolbarConfigurations(
                          controller: _controller,
                          dialogTheme: const QuillDialogTheme(
                              dialogBackgroundColor: red)),
                    ),
                  ],
                )),
            //
            verticalSpace(15),
            //
            Container(
              decoration: const BoxDecoration(
                color: black,
              ),
              height: 560,
              width: MediaQuery.sizeOf(context).width,
              padding: noteFieldPadding,
              // margin: bodyPadding,
              child: QuillEditor(
                focusNode: FocusNode(),
                scrollController: ScrollController(),
                configurations: QuillEditorConfigurations(
                  controller: _controller,
                ),
              ),
            ),

            verticalSpace(40),

            //save buton
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: OutlinedButton.icon(
                label: const Text('Save note'),
                onPressed: () {},
                icon: const Icon(Icons.save),
              ),
            )
          ],
        ),
      ),
    );
  }
}
