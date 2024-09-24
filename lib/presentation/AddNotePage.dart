import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddNotePage extends StatefulWidget {
  @override
  _AddNotePageState createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  String title = '';
  String description = '';

  Future<void> saveNote() async {
    await FirebaseFirestore.instance.collection('notes').add({
      'title': title,
      'description': description,
      'createdAt': Timestamp.now(),
    });
    Navigator.pop(context);  // Go back to Home after saving
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Note')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => title = value,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              onChanged: (value) => description = value,
              decoration: InputDecoration(labelText: 'Description'),
              maxLines: 5,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: saveNote,
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
