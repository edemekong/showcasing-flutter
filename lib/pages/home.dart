import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('rebuild this many times');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextField(
              controller: _controller,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                if (_controller.text.contains('@')) {
                  _controller.text = _controller.text;
                } else {
                  _controller.text = 'Invalid Email';
                }
              });
            },
            child: const Text('Press me'),
          ),
          Text(_controller.text)
        ],
      ),
    );
  }
}
