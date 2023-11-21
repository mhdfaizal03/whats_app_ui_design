import 'package:flutter/material.dart';
import 'package:whats_app_ui_design/colors.dart';
import 'package:whats_app_ui_design/info.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Status',
                  style: TextStyle(fontSize: 23),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                ),
                Positioned(
                    bottom: 1,
                    right: 1,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: tabColor,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ))
              ],
            ),
            title: Text(
              'My Status',
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text('Tap to add status update'),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text('Recent updates'),
                SizedBox(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black,
                            backgroundImage: NetworkImage(
                                info[index]['profilePic'].toString()),
                          ),
                        ],
                      ),
                      title: Text(info[index]['name'].toString()),
                      subtitle: Text('${index + 2 * 22} minuites ago'),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
