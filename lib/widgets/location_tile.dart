import 'package:flutter/material.dart';

class LocationTile extends StatelessWidget {
  final String name;
  final String flagAsset;

  const LocationTile({super.key, required this.name, required this.flagAsset});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(flagAsset, height: 24),
      title: Text(name, style: TextStyle(color: Colors.white)),
      trailing: Icon(Icons.network_check, color: Colors.purple),
    );
  }
}
