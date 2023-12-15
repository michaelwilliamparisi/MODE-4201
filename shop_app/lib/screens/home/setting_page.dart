import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'home_screen.dart';

class SettingRoute extends StatelessWidget {
  const SettingRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen())); // Navigate back to first route when tapped.
                },
                child: const Text('View Profile'),
              ),
              const Row(
                children: <Widget>[
                  Text("Enable Notifications: "),
                  Spacer(),
                  SwitchExample()
                ],
              ),
              const Row(
                children: <Widget>[
                  Text("Location: "),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter your location:"),
                      ),
                    ),
                  )
                ],
              ),
              const Row(
                children: <Widget>[
                  Text("Range: "),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Range:"),
                      ),
                    ),
                  )
                ],
              ),
              const Row(
                children: <Widget>[
                  Text("Color Settings: "),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Color:"),
                      ),
                    ),
                  )
                ],
              ),
              const Row(
                children: <Widget>[
                  Text("Text-To-Speesh: "),
                  Spacer(),
                  SwitchExample()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Track color when the switch is selected.
        if (states.contains(MaterialState.selected)) {
          return Colors.amber;
        }
        // Otherwise return null to set default track color
        // for remaining states such as when the switch is
        // hovered, focused, or disabled.
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Material color when switch is selected.
        if (states.contains(MaterialState.selected)) {
          return Colors.amber.withOpacity(0.54);
        }
        // Material color when switch is disabled.
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade400;
        }
        // Otherwise return null to set default material color
        // for remaining states such as when the switch is
        // hovered, or focused.
        return null;
      },
    );

    return Switch(
      // This bool value toggles the switch.
      value: light,
      overlayColor: overlayColor,
      trackColor: trackColor,
      thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
