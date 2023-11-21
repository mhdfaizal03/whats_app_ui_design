import 'package:flutter/material.dart';
import 'package:whats_app_ui_design/colors.dart';
import 'package:whats_app_ui_design/screens/call_screen.dart';
import 'package:whats_app_ui_design/screens/community_screen.dart';
import 'package:whats_app_ui_design/screens/status_screen.dart';
import 'package:whats_app_ui_design/widgets/chat_list.dart';
import 'package:whats_app_ui_design/widgets/contacts_list.dart';

class MobileLayoutScreen extends StatelessWidget {
  const MobileLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          centerTitle: false,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.grey),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                icon: Icon(Icons.groups_2),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          CommunityScreen(),
          ContactsList(),
          StatusScreen(),
          CallsScreen(),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: tabColor,
          child: const Icon(
            Icons.insert_comment,
            color: backgroundColor,
          ),
        ),
      ),
    );
  }
}
