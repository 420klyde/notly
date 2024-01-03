import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notly/core/models/note_model.dart';
import 'package:notly/utils/constants/colors.dart';
import 'package:notly/utils/constants/edge_insets.dart';
import 'package:notly/utils/helper_widgets.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      constraints: const BoxConstraints(maxHeight: double.infinity),
      //
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: black, width: 0.1))),
      //
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Expanded(
        child: Stack(
          children: [
            if (note.isDue)
              Positioned(
                top: 9,
                child: Row(
                  children: [
                    horizontalSpace(4),
                    const CircleAvatar(radius: 3, backgroundColor: blue),
                    horizontalSpace(5),
                  ],
                ),
              ),
            Padding(
              padding: bodyPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      //note is due blue dot

                      Text(note.title,
                          style: Theme.of(context).textTheme.titleLarge),
                      horizontalSpace(5),
                      //add note to favorite icon
                      const Icon(Icons.star, color: yellow, size: 13),
                      //if the note is due show notification icon

                      if (note.isDue)
                        const Icon(Icons.notifications, color: blue, size: 13)
                    ],
                  ),

                  verticalSpace(2),
                  //text
                  Text(note.body,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 3,
                      overflow: TextOverflow.fade),

                  verticalSpace(5),

                  //note date and tags
                  Row(
                    children: [
                      Text(DateFormat.yMd().format(note.date),
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(color: lightGrey)),
                      horizontalSpace(10),

                      Expanded(
                        child: SizedBox(
                          height: 18,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: note.tags.length,
                              itemBuilder: (context, index) {
                                //
                                final tag = note.tags[index];
                                //
                                return Container(
                                  height: 18,
                                  constraints: const BoxConstraints(
                                      maxWidth: double.infinity),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: const BoxDecoration(
                                      color: tagFaintWhite,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Text(
                                    tag,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: fainterBlack,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.2,
                                        ),
                                  ),
                                );
                              }),
                        ),
                      )
                      //note tags
                    ],
                  ),
                  //note date and tags

                  if (note.isDue) verticalSpace(5),

                  //reminder highlight
                  if (note.isDue)
                    Text(
                      'Reminder: ${DateFormat('MMMM d, hh:mm a').format(DateTime.now())}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: faintBlue,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
