import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraTab extends StatefulWidget {
  @override
  _CameraTabState createState() => _CameraTabState();
}

class _CameraTabState extends State<CameraTab> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(20.0),
          child: _image == null
              ? Text(
                  'No image selected.',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              : Image.file(_image),
        ),
        SizedBox(height: 20),
        Center(
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Theme.of(context).primaryColor),
            ),
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 48),
            child: Text(
              'Take picture',
              style: Theme.of(context).textTheme.headline1,
            ),
            onPressed: getImage,
          ),
        ),
      ],
    );
  }
}
