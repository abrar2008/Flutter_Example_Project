import 'dart:async';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/settings_screen/accountsettings/account_settings.dart';
import 'package:guily_app/screens/settings_screen/accountsettings/image_picker_handler.dart';

class AccountPicture extends StatefulWidget {
  const AccountPicture({Key key}) : super(key: key);

  @override
  _AccountPictureState createState() => _AccountPictureState();
}

class _AccountPictureState extends State<AccountPicture>
    with TickerProviderStateMixin, ImagePickerListener {
  File _image;
  var url;
  AnimationController _controller;
  ImagePickerHandler imagePicker;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    imagePicker = new ImagePickerHandler(this, _controller);
    imagePicker.init();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AccountSettings()));
          },
          child: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Change Picture',
          style: GoogleFonts.nunito(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: GestureDetector(
        onTap: () => imagePicker.showDialog(context),
        child: Center(
          child: _image == null
              ? Stack(
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        radius: 80.0,
                        backgroundColor: Color(0xFF778899),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.camera_alt,
                        size: 80,
                      ),
                    ),
                  ],
                )
              : url != null
                  ? Container(
                      height: 160.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: NetworkImage(url),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(color: Colors.red, width: 5.0),
                        borderRadius:
                            BorderRadius.all(const Radius.circular(80.0)),
                      ),
                    )
                  : Container(
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: CircleAvatar(
                              radius: 80.0,
                              backgroundColor: Color(0xFF778899),
                            ),
                          ),
                          Center(
                            child: CircularProgressIndicator(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
        ),
      ),
    );
  }

  @override
  userImage(File _image) async {
    setState(() {
      this._image = _image;
    });
    imagegetter(_image);
  }

  Future<void> imagegetter(File _image1) async {
    String valueused = await uploadAndGetImageUrl(_image1, "User Images");
    setState(() {
      url = valueused;
    });
  }

  Future<String> uploadAndGetImageUrl(dynamic file, String folderName) async {
    final storageReference = FirebaseStorage.instance.ref().child(folderName).child(
        "${DateTime.now().millisecondsSinceEpoch} ${file.path.split("/").first}");
    final UploadTask uploadTask =
        storageReference.putData(await file.readAsBytes());
    final Completer completer = Completer();
    final taskSnapshot =
        await uploadTask.whenComplete(() => completer.complete());
    await completer.future;

    final imageUrl = (await taskSnapshot.ref.getDownloadURL());
    return imageUrl;
    // final StorageTaskSnapshot snapshot = await uploadTask. onComplete;

    // final imageUrl = (await snapshot.ref.getDownloadURL()) as String;
    // return imageUrl;
  }
}
