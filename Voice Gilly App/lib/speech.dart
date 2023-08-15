import 'dart:io';

import 'package:flutter/material.dart';
import 'package:background_stt/background_stt.dart';
import 'package:gx_file_picker/gx_file_picker.dart';

class MyApp12 extends StatefulWidget {
  @override
  _MyApp12State createState() => _MyApp12State();
}

class _MyApp12State extends State<MyApp12> {
  var _service = BackgroundStt();
  var result = "Say something!";
  var confirmation = "";
  var confirmationReply = "";
  var voiceReply = "";
  var isListening = false;

  double _currentPitchValue = 100;
  double _currentRateValue = 100;

  @override
  void initState() {
    _service.startSpeechListenService;

    setState(() {
      if (mounted) isListening = true;
    });
    _service.getSpeechResults().onData((data) {
      print("getSpeechResults: ${data.result} , ${data.isPartial} [STT Mode]");

      _doOnSpeechCommandMatch(data.result);

      setState(() {
        confirmation = "";
        confirmationReply = "";
        voiceReply = "";
        result = data.result;
      });
    });

    _service.getConfirmationResults().onData((data) {
      print(
          "getConfirmationResults: Confirmation Text: ${data.confirmationIntent} , "
          "User Replied: ${data.confirmedResult} , "
          "Voice Input Message: ${data.voiceInput} , "
          "Is Confirmation Success?: ${data.isSuccess}");

      setState(() {
        confirmation = data.confirmationIntent;
        confirmationReply = data.confirmedResult;
      });
    });
    super.initState();
  }

  Future<void> _doOnSpeechCommandMatch(String command) async {
    var arrList = command.split(' ');
    print(arrList);
    if (arrList.contains("navigate")) {
    } else if (command.toLowerCase().trim().contains("mp3")) {
      List<File> files = await FilePicker.getMultiFile(
        type: FileType.custom,
        allowedExtensions: [
          'mp3',
        ],
      );
      for (int i = 0; i < files.length; i++) {
        print(files[i]);
      }
    } else if (command.toLowerCase().trim().contains("pdf")) {
      List<File> files = await FilePicker.getMultiFile(
        type: FileType.custom,
        allowedExtensions: [
          'pdf',
        ],
      );
      for (int i = 0; i < files.length; i++) {
        print(files[i]);
      }
    } else if (command.toLowerCase().trim().contains("mp4")) {
      List<File> files = await FilePicker.getMultiFile(
        type: FileType.custom,
        allowedExtensions: [
          'mp4',
        ],
      );
      for (int i = 0; i < files.length; i++) {
        print(files[i]);
      }
      // File file = await FilePicker.platform.pickFiles()
      // pickFiles('mp4');
    } else if (
        // command.toLowerCase().trim().contains("files") &&
        command.toLowerCase().trim().contains("jpg")) {
      List<File> files = await FilePicker.getMultiFile(
        type: FileType.custom,
        allowedExtensions: [
          'jpg',
        ],
      );
      for (int i = 0; i < files.length; i++) {
        print(files[i]);
      }
      // File file = await FilePicker.platform.pickFiles()
      // pickFiles('jpg');
    }
    setState(() {
      confirmation = "$command [Confirmation Mode]";
    });
  }

  pickFiles(String type) async {}

  void updateSpeaker() {
    print("setSpeaker: pitch($_currentPitchValue) rate($_currentRateValue)");
    _service.setSpeaker(_currentPitchValue / 100, _currentRateValue / 100);
  }

  void dispose() {
    super.dispose();
    _service.stopSpeechListenService;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Background Speech-to-Text'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$result\n\n'),
              confirmation.isNotEmpty
                  ? Text('Confirmation: $confirmation')
                  : Container(),
              confirmationReply.isNotEmpty
                  ? Text('Reply: $confirmationReply')
                  : Container(),
              voiceReply.isNotEmpty
                  ? Text('Voice Reply: $voiceReply')
                  : Container(),
              confirmation.isNotEmpty
                  ? RaisedButton(
                      child: Text("Cancel Confirmation"),
                      onPressed: () async {
                        await _service.cancelConfirmation;

                        setState(() {
                          result = "Say something!";
                          confirmation = "";
                          confirmationReply = "";
                          voiceReply = "";
                        });
                      },
                    )
                  : Container(),
              Visibility(
                child: RaisedButton(
                  child: Text("Pause Listening"),
                  onPressed: () async {
                    await _service.pauseListening();

                    setState(() {
                      result = "Speech listener Paused!";
                      confirmation = "";
                      confirmationReply = "";
                      voiceReply = "";
                      isListening = false;
                    });
                  },
                ),
                replacement: RaisedButton(
                  child: Text("Resume Listening"),
                  onPressed: () async {
                    await _service.resumeListening();

                    setState(() {
                      result = "Speech listener Resumed!";
                      confirmation = "";
                      confirmationReply = "";
                      voiceReply = "";
                      isListening = true;
                    });
                  },
                ),
                visible: isListening,
              ),
              RaisedButton(
                child: Text("Speak"),
                onPressed: () async {
                  var t = DateTime.now();
                  await _service.speak(
                      "Hello, time is ${t.hour}:${t.minute}:${t.second}",
                      false);

                  setState(() {
                    result = "Speech listener Paused!";
                    confirmation = "";
                    confirmationReply = "";
                    voiceReply = "";
                    isListening = false;
                  });
                },
              ),
              Slider(
                value: _currentPitchValue,
                min: 0,
                max: 100,
                divisions: 10,
                label: "Pitch: ${_currentPitchValue.round().toString()}",
                onChanged: (double value) {
                  setState(() {
                    _currentPitchValue = value;
                  });
                  updateSpeaker();
                },
              ),
              Slider(
                value: _currentRateValue,
                min: 0,
                max: 100,
                divisions: 10,
                label: "Rate: ${_currentRateValue.round().toString()}",
                onChanged: (double value) {
                  setState(() {
                    _currentRateValue = value;
                  });
                  updateSpeaker();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:speech_to_text_plugins/speech_to_text_plugins.dart';

// class MyApp1 extends StatefulWidget {
//   @override
//   _MyApp1State createState() => _MyApp1State();
// }

// class _MyApp1State extends State<MyApp1> {
//   String _platformVersion = 'Unknown';

//   SpeechToTextPlugins speechToTextPlugins = SpeechToTextPlugins();

//   @override
//   void initState() {
//     super.initState();
//     initPlatformState();
//   }

//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> initPlatformState() async {
//     String platformVersion;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       speechToTextPlugins.activate().then((onValue) {
//         print(onValue);
//         listenToMic();

//         // speechToTextPlugins.listen();
//       });
//     } on PlatformException {
//       platformVersion = 'Failed to get platform version.';
//     }

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;

//     setState(() {
//       _platformVersion = platformVersion;
//     });
//   }

//   void listenToMic() {
//     speechToTextPlugins.listen().then((value) => print(value));
//     listenToMic();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('Plugin example app'),
//       // ),
//       body: Column(
//         // mainAxisSize: MainAxisSize.max,
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // ElevatedButton(
//           //   child: Text('activate'),
//           //   onPressed: () {
//           //     speechToTextPlugins.activate().then((onValue) {
//           //       print(onValue);
//           //     });
//           //   },
//           // ),
//           ElevatedButton(
//             child: Text('listen'),
//             onPressed: () {
//               speechToTextPlugins.listen();
//             },
//           ),
//           // ElevatedButton(
//           //   child: Text('stop'),
//           //   onPressed: () {
//           //     speechToTextPlugins.stop().then((onValue) {
//           //       print(onValue);
//           //     });
//           //   },
//           // ),
//           // ElevatedButton(
//           //   child: Text('cancel'),
//           //   onPressed: () {
//           //     speechToTextPlugins.cancel().then((onValue) {
//           //       print(onValue);
//           //     });
//           //   },
//           // ),
//         ],
//       ),
//     );
//   }
// }
