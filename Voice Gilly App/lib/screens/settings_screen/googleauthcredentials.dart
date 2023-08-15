import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:googleapis/drive/v3.dart' as ga;
import 'package:guily_app/screens/settings_screen/cloud_and_connections.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:gx_file_picker/gx_file_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:http/io_client.dart';
import 'package:path_provider/path_provider.dart';

class GoogleDrivePage extends StatefulWidget {
  final signedinornot;
  final googleSignInAccountaccess;
  GoogleDrivePage(this.signedinornot, this.googleSignInAccountaccess);
  @override
  _GoogleDrivePageState createState() => _GoogleDrivePageState();
}

class _GoogleDrivePageState extends State<GoogleDrivePage> {
  final storage = new FlutterSecureStorage();
  final scaffoldkey = GlobalKey<ScaffoldState>();
  // final GoogleSignIn googleSignIn = GoogleSignIn(
  //   scopes: <String>[
  //     'email',
  //     'https://www.googleapis.com/auth/drive.appdata',
  //   ],
  // );
  GoogleSignInAccount googleSignInAccount;
  ga.FileList list;
  var signedIn;
  var response;

  @override
  void initState() {
    signedIn = widget.signedinornot;
    googleSignInAccount = widget.googleSignInAccountaccess;
    super.initState();
  }

  void _logoutFromGoogle() async {
    GoogleSignIn().signOut().then((value) {
      print("User Sign Out");
      storage.write(key: "signedIn", value: "false").then((value) {
        setState(() {
          signedIn = false;
        });
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CloudAndConnectionsScreen()));
      });
    });
  }

  _uploadFileToGoogleDrive() async {
    var client = GoogleHttpClient(await googleSignInAccount.authHeaders);
    var drive = ga.DriveApi(client);
    ga.File fileToUpload = ga.File();
    var file = await FilePicker.getFile();
    fileToUpload.parents = ["appDataFolder"];
    fileToUpload.name = path.basename(file.absolute.path);
    try {
      response = await drive.files.create(
        fileToUpload,
        uploadMedia: ga.Media(file.openRead(), file.lengthSync()),
      );
    } catch (e) {
      scaffoldkey.currentState.showSnackBar(
        SnackBar(
          content: Text('$e'),
        ),
      );
    }
    // var response = await drive.files.create(
    //   fileToUpload,
    //   uploadMedia: ga.Media(file.openRead(), file.lengthSync()),
    // );
    print('Response : $response');
    _listGoogleDriveFiles();
  }

  Future<void> _listGoogleDriveFiles() async {
    var client = GoogleHttpClient(await googleSignInAccount.authHeaders);
    var drive = ga.DriveApi(client);
    try {
      drive.files.list(spaces: 'appDataFolder').then((value) {
        setState(() {
          list = value;
        });
      });
    } catch (e) {
      scaffoldkey.currentState.showSnackBar(
        SnackBar(
          content: Text('$e'),
        ),
      );
    }
  }

  Future<void> _downloadGoogleDriveFile(String fName, String gdID) async {
    var client = GoogleHttpClient(await googleSignInAccount.authHeaders);
    var drive = ga.DriveApi(client);
    ga.Media file = await drive.files
        .get(gdID, downloadOptions: ga.DownloadOptions.fullMedia);
    print(file.stream);
    final directory = await getExternalStorageDirectory();
    print(directory.path);
    final saveFile = File(
        '${directory.path}/${new DateTime.now().millisecondsSinceEpoch}$fName');
    List<int> dataStore = [];
    file.stream.listen((data) {
      dataStore.insertAll(dataStore.length, data);
    }, onDone: () {
      saveFile.writeAsBytes(dataStore);
    }, onError: (error) {
      print("Some Error");
    });
  }

  List<Widget> generateFilesWidget() {
    List<Widget> listItem = List<Widget>();
    if (list != null) {
      for (var i = 0; i < list.files.length; i++) {
        listItem.add(Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.05,
              child: Text(
                '${i + 1}',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 13.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                list.files[i].name,
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 13.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: RaisedButton(
                  elevation: 0.9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Text(
                    "Download",
                    style: GoogleFonts.nunito(
                      color: ColorTheme.color_theme_background,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    _downloadGoogleDriveFile(
                        list.files[i].name, list.files[i].id);
                  },
                ),
              ),
            ),
          ],
        ));
      }
    }
    return listItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: ColorTheme.color_theme_background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            (signedIn
                ? Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: RaisedButton(
                      elevation: 0.9,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.white,
                      child: Text(
                        "Upload File to Google Drive",
                        style: GoogleFonts.nunito(
                          color: ColorTheme.color_theme_background,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        _uploadFileToGoogleDrive();
                      },
                    ),
                  )
                : Container()),
            (signedIn
                ? Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: RaisedButton(
                      elevation: 0.9,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.white,
                      child: Text(
                        "List Google Drive Files",
                        style: GoogleFonts.nunito(
                          color: ColorTheme.color_theme_background,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        _listGoogleDriveFiles();
                      },
                    ),
                  )
                : Container()),
            (signedIn
                ? Expanded(
                    flex: 10,
                    child: Column(
                      children: generateFilesWidget(),
                    ),
                  )
                : Container()),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: RaisedButton(
                elevation: 0.9,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.white,
                child: Text(
                  "Change Google Drive",
                  style: GoogleFonts.nunito(
                    color: ColorTheme.color_theme_background,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  _logoutFromGoogle();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GoogleHttpClient extends IOClient {
  Map<String, String> _headers;

  GoogleHttpClient(this._headers) : super();

  @override
  Future<IOStreamedResponse> send(http.BaseRequest request) =>
      super.send(request..headers.addAll(_headers));

  @override
  Future<http.Response> head(Object url, {Map<String, String> headers}) =>
      super.head(url, headers: headers..addAll(_headers));
}
