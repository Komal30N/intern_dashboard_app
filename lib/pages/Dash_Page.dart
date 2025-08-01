import 'package:flutter/material.dart';
import '../card.dart';

class DashPage extends StatefulWidget {
  final String Name;
  const DashPage({super.key, required this.Name});

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dashboard",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 50),


            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Intern Name: ${widget.Name}",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400 ),),
                    const SizedBox(height: 12),
                    Text("Referral Code: ${widget.Name}1456",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                    const SizedBox(height: 14),
                    const Text("Total Donations Raised: ₹11,000",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
            Text("  Rewards  ",
                style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold)),

            const SizedBox(height: 30),

            // Rewards Scrollable Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  card(icon: Icons.timelapse, label: "Early Bird ",),
                  SizedBox(width: 20),
                  card(icon: Icons.emoji_events, label: "₹5K Milestone"),
                  SizedBox(width: 20),
                  card(icon: Icons.card_giftcard, label: "Bonus Claim"),
                  SizedBox(width: 20),
                  card(icon: Icons.check_circle, label: "Weekly Target"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
