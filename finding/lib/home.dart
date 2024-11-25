import 'package:flutter/material.dart';
import 'SHOPS/shops_Home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 95),
            const Text(
              "Hi, Juan Dela Cruz!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              "Need some help today?",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  buildOption(context, "Referral", Icons.group, ReferralPage()),
                  buildOption(context, "Shops", Icons.store, ShopsHome()),
                  buildOption(context, "Rides", Icons.two_wheeler, RidesPage()),
                  buildOption(context, "Deliveries", Icons.local_shipping, DeliveriesPage()),
                  buildOption(context, "MyGrow", Icons.share, MyGrowPage()),
                  buildOption(context, "Community", Icons.groups, CommunityPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOption(BuildContext context, String title, IconData icon, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 70, color: Colors.black),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder pages
class ReferralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Referral")),
      body: Center(child: Text("Referral Page")),
    );
  }
}

class RidesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rides")),
      body: Center(child: Text("Rides Page")),
    );
  }
}

class DeliveriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Deliveries")),
      body: Center(child: Text("Deliveries Page")),
    );
  }
}

class MyGrowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyGrow")),
      body: Center(child: Text("MyGrow Page")),
    );
  }
}

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Community")),
      body: Center(child: Text("Community Page")),
    );
  }
}

class MessagingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Messaging")),
      body: Center(child: Text("Messaging Page")),
    );
  }
}

