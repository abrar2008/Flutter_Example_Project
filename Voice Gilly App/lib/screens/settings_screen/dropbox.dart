import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dropbox_client/dropbox_client.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/settings_screen/cloud_and_connections.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String dropbox_clientId =
    'sl.A2GzKmBPw_kQ8hVN4xHkIopJk8JHJBG-cesQgNl8075kOuexV9rV-VCP9DTvxEqaY98-Jm-jvPadXkObRlErpbXqP_dXarh8YMxMwSN85fncLZ1yzBB4Hb9rc0xLt8gSF5e-da0';
const String dropbox_key = 'u1196p9hw93iqok';
const String dropbox_secret = '9w7uh5g1bf891yt';

class DropBox extends StatefulWidget {
  @override
  _DropBoxState createState() => _DropBoxState();
}

class _DropBoxState extends State<DropBox> {
  String accessToken;
  bool showInstruction = false;

  @override
  void initState() {
    super.initState();

    initDropbox();
  }

  Future initDropbox() async {
    if (dropbox_key == 'dropbox_key') {
      showInstruction = true;
      return;
    }

    await Dropbox.init(dropbox_clientId, dropbox_key, dropbox_secret);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    accessToken = prefs.getString('dropboxAccessToken');

    setState(() {});
  }

  Future<bool> checkAuthorized(bool authorize) async {
    final token = await Dropbox.getAccessToken();
    if (token != null) {
      if (accessToken == null || accessToken.isEmpty) {
        accessToken = token;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('dropboxAccessToken', accessToken);
      }
      return true;
    }
    if (authorize) {
      if (accessToken != null && accessToken.isNotEmpty) {
        await Dropbox.authorizeWithAccessToken(accessToken);
        final token = await Dropbox.getAccessToken();
        if (token != null) {
          print('authorizeWithAccessToken!');
          return true;
        }
      } else {
        await Dropbox.authorize();
        print('authorize!');
      }
    }
    return false;
  }

  Future authorize() async {
    await Dropbox.authorize();
  }

  Future unlink() async {
    await deleteAccessToken();
    await Dropbox.unlink();
  }

  Future authorizeWithAccessToken() async {
    await Dropbox.authorizeWithAccessToken(accessToken);
  }

  Future deleteAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('dropboxAccessToken');

    setState(() {
      accessToken = null;
    });
  }

  Future getAccountName() async {
    if (await checkAuthorized(true)) {
      final user = await Dropbox.getAccountName();
      print('user = $user');
    }
  }

  Future listFolder(path) async {
    if (await checkAuthorized(true)) {
      final result = await Dropbox.listFolder(path);
      setState(() {
        list.clear();
        list.addAll(result);
      });
    }
  }

  Future uploadTest() async {
    if (await checkAuthorized(true)) {
      var tempDir = await getTemporaryDirectory();
      var filepath = '${tempDir.path}/test_upload.txt';
      File(filepath).writeAsStringSync(
          'contents.. from ' + (Platform.isIOS ? 'iOS' : 'Android') + '\n');

      final result =
          await Dropbox.upload(filepath, '/test_upload.txt', (uploaded, total) {
        print('progress $uploaded / $total');
      });
      print(result);
    }
  }

  Future downloadTest() async {
    if (await checkAuthorized(true)) {
      var tempDir = await getTemporaryDirectory();
      var filepath = '${tempDir.path}/test_download.zip'; // for iOS only!!
      print(filepath);

      final result = await Dropbox.download('/file_in_dropbox.zip', filepath,
          (downloaded, total) {
        print('progress $downloaded / $total');
      });

      print(result);
      print(File(filepath).statSync());
    }
  }

  Future<String> getTemporaryLink(path) async {
    final result = await Dropbox.getTemporaryLink(path);
    return result;
  }

  final list = List<dynamic>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CloudAndConnectionsScreen()));
          },
          child: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Dropbox',
          style: GoogleFonts.nunito(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: showInstruction
          ? Instructions()
          : Builder(
              builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Wrap(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: RaisedButton(
                            elevation: 0.9,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: ColorTheme.color_theme_background,
                            child: Text(
                              "Authorize",
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: authorize,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: RaisedButton(
                            elevation: 0.9,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: ColorTheme.color_theme_background,
                            child: Text(
                              "Authorize With Access Token",
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: accessToken == null
                                ? null
                                : authorizeWithAccessToken,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: RaisedButton(
                            elevation: 0.9,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: ColorTheme.color_theme_background,
                            child: Text(
                              "Unlink",
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: unlink,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: RaisedButton(
                            elevation: 0.9,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: ColorTheme.color_theme_background,
                            child: Text(
                              "List Root Folder",
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () async {
                              await listFolder('');
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: RaisedButton(
                            elevation: 0.9,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: ColorTheme.color_theme_background,
                            child: Text(
                              "Test Upload",
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () async {
                              await uploadTest();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: RaisedButton(
                            elevation: 0.9,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: ColorTheme.color_theme_background,
                            child: Text(
                              "Test Download",
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () async {
                              await downloadTest();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          final item = list[index];
                          final filesize = item['filesize'];
                          final path = item['pathLower'];
                          bool isFile = false;
                          var name = item['name'];
                          if (filesize == null) {
                            name += '/';
                          } else {
                            isFile = true;
                          }
                          return ListTile(
                              title: Text(name),
                              onTap: () async {
                                if (isFile) {
                                  final link = await getTemporaryLink(path);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(link ??
                                              'getTemporaryLink error: $path')));
                                } else {
                                  await listFolder(path);
                                }
                              });
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
    );
  }
}

class Instructions extends StatelessWidget {
  const Instructions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              'You need to get dropbox_key & dropbox_secret from https://www.dropbox.com/developers'),
          SizedBox(height: 20),
          Text('1. Update dropbox_key and dropbox_secret from main.dart'),
          SizedBox(height: 20),
          Text(
              "  const String dropbox_key = 'DROPBOXKEY';\n  const String dropbox_secret = 'DROPBOXSECRET';"),
          SizedBox(height: 20),
          Text(
              '2. (Android) Update dropbox_key from android/app/src/main/AndroidManifest.xml.\n  <data android:scheme="db-DROPBOXKEY" />'),
          SizedBox(height: 20),
          Text(
              '2. (iOS) Update dropbox_key from ios/Runner/Info.plist.\n  <string>db-DROPBOXKEY</string>'),
        ],
      ),
    );
  }
}
