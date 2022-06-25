import 'package:flutter/material.dart';

class pop extends StatefulWidget {
  const pop({Key? key}) : super(key: key);

  @override
  State<pop> createState() => _popState();
}

class _popState extends State<pop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 225),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('close'))
                            ],
                          ),
                        );
                      });
                },
                child: const Text('Bus A'))
          ],
        ),
      ),
    );
  }
}
