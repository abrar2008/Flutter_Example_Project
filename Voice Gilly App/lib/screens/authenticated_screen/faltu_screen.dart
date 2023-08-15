import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:bubble/bubble.dart';
import 'package:guily_app/screens/TabSelector/tab_selector.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({@required this.messageContent, @required this.messageType});
}

class FaltuScreen extends StatefulWidget {
  @override
  _FaltuScreenState createState() => _FaltuScreenState();
}

class _FaltuScreenState extends State<FaltuScreen> {
  String text = "Hello, I'm Giuly how can I help you?";
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Hello, I'm Giuly how can I help you?",
        messageType: "receiver"),
  ];

  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.color_theme_background,
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
                        return Container(
                          padding: EdgeInsets.all(5),
                          child: Align(
                            alignment:
                                (messages[index].messageType == "receiver"
                                    ? Alignment.topLeft
                                    : Alignment.topRight),
                            child: Container(
                              child: Bubble(
                                color:
                                    (messages[index].messageType == "receiver"
                                        ? Colors.grey.shade200
                                        : Colors.blue[800]),
                                margin: BubbleEdges.only(top: 10),
                                nip: (messages[index].messageType == "receiver"
                                    ? BubbleNip.leftTop
                                    : BubbleNip.rightBottom),
                                child: Text(
                                  messages[index].messageContent,
                                  style:
                                      messages[index].messageType == "receiver"
                                          ? TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            )
                                          : TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => TabSelector(),
                        ));
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          CupertinoIcons.add_circled,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: CupertinoTextField(
                        textCapitalization: TextCapitalization.sentences,
                        controller: _controller,
                        placeholder: 'Type your message here',
                        placeholderStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[300],
                        ),
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          messages.add(
                            ChatMessage(
                                messageContent: _controller.text,
                                messageType: "sender"),
                          );
                        });
                        if (_controller.text.contains("Hi") ||
                            _controller.text.toString() == "Hi" ||
                            _controller.text == "Hello" ||
                            _controller.text == "Hellow" ||
                            _controller.text == "Helllo" ||
                            _controller.text == "Helloo" ||
                            _controller.text == "Hey") {
                          setState(() {
                            messages.add(
                              ChatMessage(
                                  messageContent:
                                      "Goood Afternoon, How can I help you?",
                                  messageType: "receiver"),
                            );
                          });
                        }
                        _controller.clear();
                      },
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                      backgroundColor: Colors.blue,
                      elevation: 0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          messages.add(
                            ChatMessage(
                                messageContent:
                                    "You can speak, I'm Listening...",
                                messageType: "receiver"),
                          );
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          CupertinoIcons.mic_fill,
                          color: Colors.blue,
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 2, right: 10),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
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
}
