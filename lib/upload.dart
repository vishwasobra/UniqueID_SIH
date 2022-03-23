import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Upload extends StatelessWidget {
  Upload({ Key? key }) : super(key: key);

  FirebaseStorage storage = FirebaseStorage.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  var docNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: docNameController,
                decoration: InputDecoration(
                  hintText: "Enter Document Name",
                ),
              ),
              ElevatedButton(
                child: Text('Upload File'),
                onPressed: ()async{
                  FilePickerResult? result = await FilePicker.platform.pickFiles();
                  if (result != null) {
                    File file = File(result.files.single.path!);
                    String fileid = Uuid().v1();
                    UploadTask uploadTask = storage.ref(fileid).putFile(file);

                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("No file chosen"),
                    ));
                  }
                },
              ),
            ],
          ),
        )
      ),
    );
  }
}