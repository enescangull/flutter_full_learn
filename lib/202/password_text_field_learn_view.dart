import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;
  void _changeVis() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      obscuringCharacter: '/',
      decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: 'Password',
          suffix: _onVisibilityMethod()),
    );
  }

  IconButton _onVisibilityMethod() {
    return IconButton(
      onPressed: () {
        _changeVis();
      },
      icon: AnimatedCrossFade(
          firstChild: Icon(Icons.visibility_outlined),
          secondChild: Icon(Icons.visibility_off_outlined),
          crossFadeState:
              _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(milliseconds: 500)),
      // icon: Icon(_isSecure
      //     ? Icons.visibility_outlined
      //     : Icons.visibility_off_outlined),
    );
  }
}
