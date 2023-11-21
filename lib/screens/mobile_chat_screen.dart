import 'package:flutter/material.dart';
import 'package:whats_app_ui_design/colors.dart';
import 'package:whats_app_ui_design/info.dart';
import 'package:whats_app_ui_design/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  final index;
  const MobileChatScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(0),
            child: _appBar(context),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: ChatList(),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.82,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: mobileChatBoxColor,
                        prefixIcon: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13.0),
                          child: Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.camera_alt,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.attach_file,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.money,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        hintText: 'Type a message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: messageColor,
                  radius: 25,
                  child: Center(
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget? _appBar(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                CircleAvatar(
                  backgroundImage:
                      NetworkImage(info[index]['profilePic'].toString()),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    const Text(
                      'Online',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.videocam_sharp)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.phone_sharp)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
