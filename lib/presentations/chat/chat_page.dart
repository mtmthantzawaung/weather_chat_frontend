import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:weather_chat_frontend/models/chat/chat_model.dart';
import 'package:weather_chat_frontend/utils/widgets/own_message.dart';
import 'package:weather_chat_frontend/utils/widgets/reply_mesage.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    super.key,
    required this.chatModel,
  });
  final ChatModel chatModel;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  bool showEmoji = false;
  late FocusNode focusNode;
  late TextEditingController _controller;
  bool sendButton = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    focusNode = FocusNode()
      ..addListener(
        () {
          if (focusNode.hasFocus) {
            setState(() {
              showEmoji = false;
            });
          }
        },
      );
  }

  @override
  void dispose() {
    _controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(width: 2,),
              Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
                // TODO : Change User Profile
                child: Icon(Icons.person),
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "last seen today at 2:05",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          PopupMenuButton(
            onSelected: (value) {
              debugPrint(value);
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    child: Text("View Contact"), value: "View Contact"),
                PopupMenuItem(
                  value: "Media links, and docs",
                  child: Text(
                    "Media, links and docs",
                  ),
                ),
                PopupMenuItem(
                  value: "Meta Web",
                  child: Text("Meta Web"),
                ),
                PopupMenuItem(
                  value: "Search",
                  child: Text("Search"),
                ),
                PopupMenuItem(
                  value: "Mute Notificaation",
                  child: Text("Mute Notificaation"),
                ),
                PopupMenuItem(
                  value: "Wallpaper",
                  child: Text("Wallpaper"),
                ),
              ];
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: PopScope(
            onPopInvokedWithResult: (didPop, result) {
              if (didPop) return; // Prevent double pop
              if (showEmoji) {
                setState(() {
                  showEmoji = false;
                });
              } else {
                Navigator.of(context).pop();
              }
            },
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - 140,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      OwnMessage(),
                      ReplyMessage(),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              margin:
                                  EdgeInsets.only(left: 2, right: 2, bottom: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ), // Extra padding for better UI
                                child: TextFormField(
                                  controller: _controller,
                                  focusNode: focusNode,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 7,
                                  minLines: 1,
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      setState(() {
                                        sendButton = true;
                                      });
                                    } else {
                                      setState(() {
                                        sendButton = false;
                                      });
                                    }
                                  },
                                  style: TextStyle(fontSize: 16),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Type a message",
                                    hintStyle: TextStyle(fontSize: 16),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical:
                                            12), // Adjusted padding for center alignment
                                    prefixIcon: IconButton(
                                      icon: Icon(Icons.emoji_emotions),
                                      onPressed: () {
                                        focusNode.unfocus();
                                        focusNode.canRequestFocus = false;
                                        setState(() {
                                          showEmoji = !showEmoji;
                                        });
                                      },
                                    ),
                                    suffixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.attach_file),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.camera_alt),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, right: 2),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueAccent,
                              child: IconButton(
                                icon: Icon(
                                  sendButton ? Icons.send : Icons.mic,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      showEmoji ? emojiSelect() : Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget emojiSelect() {
    return EmojiPicker(
      // config: Config(),
      onEmojiSelected: (category, emoji) {
        print(emoji);
        setState(() {
          _controller.text = _controller.text + emoji.emoji;
        });
      },
    );
  }
}
