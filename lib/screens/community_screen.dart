import 'package:flutter/material.dart';
import 'package:whats_app_ui_design/colors.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ListTile(
              leading: Stack(
                children: [
                  Container(
                    height: 55,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.groups,
                        size: 40,
                        color: Colors.grey[200],
                      ),
                    ),
                  ),
                  const Positioned(
                      right: -3,
                      bottom: -3,
                      child: CircleAvatar(
                        backgroundColor: messageColor,
                        radius: 12,
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ))
                ],
              ),
              title: const Text(
                'New community',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
