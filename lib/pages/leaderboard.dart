import 'package:flutter/material.dart';
class leaderboard extends StatelessWidget {
   leaderboard({super.key});
  final List<Map<String, dynamic>> leaderboardData = [
    {'name': 'meena ', 'amount': 12500},
    {'name': 'Rahul ', 'amount': 9800},
    {'name': 'john', 'amount': 8700},
    {'name': 'Rohan', 'amount': 8300},
    {'name': 'shreya', 'amount': 8100},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0 , left: 10 , right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("  Leaderboard", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: leaderboardData.length,
                itemBuilder: (context, index) {
                  final intern = leaderboardData[index];
                  return   Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Text("${index + 1}", style: TextStyle( color:Colors.black,fontSize: 20),),
                      title: Text(intern['name'], style: TextStyle( color:Colors.black,fontSize: 20)),
                      trailing: Text("₹${intern['amount']}" , style: TextStyle( color:Colors.black,fontSize: 20 , fontWeight: FontWeight.bold),),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
