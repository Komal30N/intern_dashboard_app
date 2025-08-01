import 'package:flutter/material.dart';
class announcements extends StatelessWidget {
  const announcements({super.key});

  final List<String> announcement = const [
    " Top 3 interns will win Amazon vouchers!",
    " Submit weekly report by Sunday night.",
    " Next leaderboard update: August 3rd.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Text("Announcements", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(18),
              itemCount: announcement.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.notifications_active),
                    title: Text(announcement[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

