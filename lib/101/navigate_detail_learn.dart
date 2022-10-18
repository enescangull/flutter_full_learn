import 'package:flutter/material.dart';

class NavigateLearnDart extends StatefulWidget {
  const NavigateLearnDart({super.key, this.isOkey = false});
  final bool isOkey;
  @override
  State<NavigateLearnDart> createState() => _NavigateLearnDartState();
}

class _NavigateLearnDartState extends State<NavigateLearnDart> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop(!widget.isOkey);
              },
              icon: widget.isOkey
                  ? Icon(Icons.close, color: Colors.red)
                  : Icon(Icons.check, color: Colors.green),
              label: widget.isOkey ? Text('Reject') : Text('Approve'))),
    );
  }
}
