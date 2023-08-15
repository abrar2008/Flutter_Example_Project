import 'dart:io';
import 'dart:async';
import 'package:guily_app/screens/api/speech_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:path_provider/path_provider.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:text_to_speech/text_to_speech.dart' as tts;
import 'package:bubble/bubble.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/settings_screen/settings.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({@required this.messageContent, @required this.messageType});
}

class FirstScreenAfterAuth extends StatefulWidget {
  @override
  _FirstScreenAfterAuthState createState() => _FirstScreenAfterAuthState();
}

class _FirstScreenAfterAuthState extends State<FirstScreenAfterAuth> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Hello, I'm Giuly how can I help you?",
        messageType: "receiver"),
  ];
  bool isListening = false;
  stt.SpeechToText _speech;
  tts.TextToSpeech _voice;
  String text = "Hello, I'm Giuly how can I help you?";
  List _writing = [];
  List _emailinput = [];
  String sendfile = "";
  int x = 0;
  int y = 0;
  int b = 0;
  int k = 1;
  // String _content;
  double volume;

  Future<String> get _getDirPath async {
    final _dir = await getApplicationDocumentsDirectory();
    return _dir.path;
  }

  Future<void> _writeData() async {
    final _dirPath = await _getDirPath;

    final _myFile = File('$_dirPath/data.txt');
    await _myFile.writeAsString(_writing.toString());
    print(_writing.toString());
  }

  Future<void> _openwhatsapp() async {
    var phone = "+123456789";
    var whatsappUrl = "whatsapp://send?phone=$phone";
    await canLaunch(whatsappUrl)
        ? launch(whatsappUrl)
        : _voice.speak("No Whatsapp installed");
  }

  void _listen(String _text) async {
    if (_text.toUpperCase() == 'OPEN FILE' && x == 0) {
      setState(() {
        x++;
      });
    } else if (_text.toUpperCase() == 'CLOSE FILE' && x != 0) {
      setState(() {
        x = 0;
      });
      _text = "Hello, I'm Giuly how can I help you?";
      _writeData();
      _voice.speak("File Saved Successfully");
    } else if (x != 0) {
      _writing.add(_text);
    } else if (b == 0 && _text.toUpperCase() == 'SEND FILE' && y == 0) {
      setState(() {
        b++;
        _text = "Whatsapp or Gmail";
        _voice.speak(_text);
      });
    } else if (b != 0) {
      if (_text.toUpperCase() == 'WHATSAPP') {
        setState(() {
          b = 0;
        });
        _openwhatsapp();
        _text = "Hello, I'm Giuly how can I help you?";
      } else if (_text.toUpperCase() == 'GMAIL') {
        setState(() {
          b = 0;
          y++;

          _text = "Tell Email";
          _voice.speak(_text);
        });
      }
    } else if (_text.toUpperCase() == 'OPEN GMAIL' && y == 0) {
      setState(() {
        y++;
        _text = "Tell Email";
        _voice.speak(_text);
      });
    } else if (_text.toUpperCase() == 'CLOSE GMAIL' && y != 0) {
      setState(() {
        y = 0;
        k = 0;
        _text = "Hello, I'm Giuly how can I help you?";
        send();
      });
    } else if (y != 0) {
      if (k == 1) {
        _emailinput.add(_text);
        _text = 'Tell Subject';
        _voice.speak(_text);
        k++;
      } else if (k == 2) {
        _emailinput.add(_text);
        _text = 'Tell Body';
        _voice.speak(_text);
        k++;
      } else if (k == 3) {
        _emailinput.add(_text);
        k++;
      }
    }
  }

  List<String> attachments = [];
  bool isHTML = false;

  var result = "Say something!";
  var confirmation = "";
  var confirmationReply = "";
  var voiceReply = "";
  var stringList = '';
  var sublist = 'GO TO WORK';
  String subject = '';
  List<String> receipants = [];
  String body = 'This is the attached file';
  List<String> filesPath = [];
  // var _arrList = [];

  void dispose() {
    super.dispose();
  }

  Future<void> send() async {
    final Email email = Email(
      body: _emailinput[2],
      subject: _emailinput[1],
      recipients: ['${_emailinput[0]}@gmail.com'],
      attachmentPaths: filesPath,
      isHTML: true,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _voice = tts.TextToSpeech();
    volume = 10.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ListView.builder(
                      itemCount: messages.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Align(
                                alignment:
                                    (messages[index].messageType == "receiver"
                                        ? Alignment.topLeft
                                        : Alignment.topRight),
                                child: Container(
                                  child: Bubble(
                                    color: (messages[index].messageType ==
                                            "receiver"
                                        ? Colors.grey.shade200
                                        : Colors.blue[800]),
                                    margin: BubbleEdges.only(top: 10),
                                    nip: (messages[index].messageType ==
                                            "receiver"
                                        ? BubbleNip.leftTop
                                        : BubbleNip.rightBottom),
                                    child: Column(
                                      children: [
                                        Text(
                                          text.toUpperCase(),
                                          style: messages[index].messageType ==
                                                  "receiver"
                                              ? TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                )
                                              : TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white10,
                ),
                child: AvatarGlow(
                  animate: true,
                  endRadius: 75.0,
                  duration: const Duration(milliseconds: 2000),
                  repeatPauseDuration: Duration(milliseconds: 100),
                  repeat: true,
                  glowColor: isListening
                      ? ColorTheme.color_theme_background
                      : Colors.white,
                  child: FloatingActionButton(
                    onPressed: () {
                      toggleRecording();
                    },
                    child: Icon(isListening ? Icons.mic_none : Icons.mic_off),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: double.infinity,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => Settings(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 2, right: 10),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 2),
                        child: Text(
                          "Hello from Giuly",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                          // top: 5,
                        ),
                        child: Icon(
                          Icons.lightbulb_outline,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future toggleRecording() => SpeechApi.toggleRecording(
        onResult: (text) => setState(() => this.text = text),
        onListening: (_isListening) {
          setState(() => this.isListening = _isListening);

          if (!_isListening) {
            Future.delayed(Duration(seconds: 1), () {
              _listen(text);
            });
          }
        },
      );
}
