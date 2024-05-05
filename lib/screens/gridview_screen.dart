import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  final String name;

  GridViewScreen({required this.name});

  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  late List<bool> _buttonVisible;

  @override
  void initState() {
    super.initState();
    _buttonVisible = List<bool>.filled(widget.name.length, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Screen'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(widget.name.length, (index) {
          return Visibility(
            visible: _buttonVisible[index],
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.green;
                    return Colors.blue; // Use the component's default.
                  },
                ),
              ),
              onPressed: () {
                setState(() {
                  _buttonVisible[index] = false;
                });
              },
              child: Text(widget.name[index], style: TextStyle(fontSize: 20)),
            ),
          );
        }),
      ),
    );
  }
}
