import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen - Dela'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () async {
            final Color? selectedColor = await _showColorDialog(context);
            if (selectedColor != null && selectedColor != color) {
              setState(() {
                color = selectedColor;
              });
            }
          },
        ),
      ),
    );
  }

  Future<Color?> _showColorDialog(BuildContext context) async {
    return showDialog<Color>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Color - Dela'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                child: const Text('Pink'),
                onPressed: () {
                  Navigator.of(context).pop(Colors.pink.shade100);
                },
              ),
              ElevatedButton(
                child: const Text('Purple'),
                onPressed: () {
                  Navigator.of(context).pop(Colors.purple.shade700);
                },
              ),
              ElevatedButton(
                child: const Text('Yellow'),
                onPressed: () {
                  Navigator.of(context).pop(Colors.yellow.shade200);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
