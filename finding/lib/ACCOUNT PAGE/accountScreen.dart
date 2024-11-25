import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003b30), 
      body: SafeArea(
        child: Column(
          children: [
           
            Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            color:  Color.fromARGB(255, 14, 79, 71),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile_placeholder.png'),
            ),
            const SizedBox(width: 12),

      
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
             
              ],
            ),
                      Row(
                mainAxisSize: MainAxisSize.min, 
                children: [
                  Text(
                    "Juan Dela Cruz",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis, 
                  ),
                  const SizedBox(width: 4), 
                  const Icon(Icons.edit, color: Colors.white, size: 16),
                ],
              ),


            const SizedBox(height: 4),

          
          
            const SizedBox(height: 4),

         
          
          ],
        ),
      ),
    ],
  ),
),


            // Scrollable Content Section
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // My Account Section
                      const Text(
                        "My Account",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      const SizedBox(height: 12),
                      const ListTile(
                        title: Text("Payment Methods"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                      
                      const ListTile(
                        title: Text("Emergency Contacts"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                      const SizedBox(height: 20),

                      // General Section
                      const Text(
                        "General",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const ListTile(
                        title: Text("Help Center"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                      
                      const ListTile(
                        title: Text("Settings"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                     
                      const ListTile(
                        title: Text("Language"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                     
                      const ListTile(
                        title: Text("Notifications"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                      const SizedBox(height: 20),

                      // Logout Button
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add logout functionality
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(color: Colors.red),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                            ),
                            child: const Text(
                              "Log out",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
