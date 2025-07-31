import 'package:flutter/material.dart';
import 'package:movieapp/screens/vpn_location_screen.dart';

class VPNMainScreen extends StatelessWidget {
  const VPNMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back, color: Colors.white),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => VPNLocationScreen()),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/flags/us.png', height: 24),
                    SizedBox(width: 10),
                    Text(
                      'United States',
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Icon(Icons.network_check, color: Colors.purple),
                    Icon(Icons.chevron_right, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "↓ 28.5 KB/s",
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                Text(
                  "↑ 21.6 KB/s",
                  style: TextStyle(color: Colors.greenAccent),
                ),
              ],
            ),
            SizedBox(height: 50),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/world_map.png',
                      height: 150,
                    ), // Add dummy world map
                    SizedBox(height: 30),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.power_settings_new,
                              color: Colors.white,
                              size: 32,
                            ),
                            SizedBox(height: 4),
                            Text(
                              "00:13:53",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
