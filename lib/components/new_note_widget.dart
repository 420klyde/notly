import 'package:flutter/material.dart';
import 'package:notly/routes/add_new_note_screen.dart';
import 'package:notly/utils/constants/colors.dart';
import 'package:notly/utils/helper_widgets.dart';

class NewNoteWidget extends StatelessWidget {
  const NewNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        IconButton.filled(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddNewNoteScreen())),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          icon: Row(
            children: [
              const Icon(Icons.add, color: white, size: 25),
              horizontalSpace(6),
              Text('New note', style: Theme.of(context).textTheme.labelMedium)
            ],
          ),
          alignment: Alignment.bottomLeft,
        ),

        //modal puller : stacked on-top of the base button
        InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          onTap: () {},
          //try out something that would make the phone vibrate sometime
          child: Container(
            height: 45,
            width: 38,
            margin: const EdgeInsets.only(bottom: 1.5),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: darkGreen),
            child: const Icon(
              Icons.keyboard_arrow_up_sharp,
              color: white,
            ),
          ),
        ),
      ],
    );
  }
}
