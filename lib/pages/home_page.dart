import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("AlertDialog Title"),
                  content: const Text("AlertDialog description"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context,"Canel");
                      },
                      child: const Text("Canel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context,"Ok");
                      },
                      child: const Text("Ok"),
                    )
                  ],
                );
              },
            );
          },
          child: const Text("Show AlertDialog"),
        ),
      ),
    );
  }
}
