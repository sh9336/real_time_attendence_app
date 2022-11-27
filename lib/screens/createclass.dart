import 'package:flutter/material.dart';
class Branch extends StatefulWidget {
  const Branch({Key? key}) : super(key: key);

  @override
  State<Branch> createState() => _BranchState();
}

class _BranchState extends State<Branch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Department'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Computer Science & Engineering',

                ),
            ),
          ],
        ),
      ),
    );
  }
}
