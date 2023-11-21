import 'package:flutter/material.dart';
import 'package:whats_app_ui_design/colors.dart';
import 'package:whats_app_ui_design/info.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: tabColor,
                radius: 30,
                child: Center(
                  child: Icon(
                    Icons.link,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              title: Text(
                'Create call link',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('Share a link for your whatsapp call'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
              child: Text(
                'Recent',
                style: TextStyle(fontSize: 17),
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
                        subtitle: Row(
                          children: [
                            Icon(
                              index != 1 + 2
                                  ? Icons.call_received_rounded
                                  : Icons.call_made_rounded,
                              size: 20,
                              color: tabColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                                'Yesterday, ${index + 1 * 2}:${index + 2 * 10} pm')
                          ],
                        ),
                        trailing: Icon(
                          index != 1 + 2 ? Icons.call : Icons.videocam,
                          color: tabColor,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
