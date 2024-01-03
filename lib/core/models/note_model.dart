class Note {
  String title = 'Note title';
  String body = 'Enter your note here';
  DateTime date = DateTime.now();
  //the note will have tags
  List<String> tags = [];
  bool isDue = false;
}

//note model : list of some demo notes

class NoteModel {
  static List<Note> notes = [
    ///first note
    Note()
      ..title = 'Dog Sitting'
      ..body =
          'Food: feed twice per day. Space meals 12 hours apart. Please don\'t leave the bowl'
      ..date
      ..tags = ['Travel', 'Luis'],

    Note()
      ..title = 'Walk-through Procedure'
      ..body =
          'Before each walkthrough...\n1. Ask buyer to bring contract/paperwork\n2. Verify most recent repairs...'
      ..date
      ..tags = ['Priority', 'Ariel'],

    Note()
      ..title = 'To-do List'
      ..body =
          '-Prep for client meeting and walkthrough\n-Send out client survey before your trip'
      ..date
      ..tags = ['Min', 'Yuki']
      ..isDue = true,

    Note()
      ..title = 'Closing Details'
      ..body =
          'Overviewing everything is here to prep for final walk-through and close Yuki\'s'
      ..date
      ..tags = ['Real estate', 'housing'],

    Note()
      ..title = 'Client Preferences'
      ..body =
          'Yuki\'s ideal client emmates from the bay area, yea you heard me right the bay area. For Yuki this was a life changing moment for the 16 year old lad. Closing huge deals and already putting smiles on his clients faces at a very young age. For some poeple Yuki\'s age, this was nothing but surrealty'
      ..date
      ..tags = ['Services', 'client']
  ];

  //funciton to add a new note
  static void addNewNote(
    String title,
    String body,
    List<String> tags,
  ) {
    //a new note instance to be added to the note list
    Note newNote = Note()
      ..title = title
      ..body = body
      ..tags = tags;

    //perform logic for adding note
    if (title.isNotEmpty && body.isNotEmpty || tags.isEmpty) {
      notes.add(newNote);
    }
  }
}
