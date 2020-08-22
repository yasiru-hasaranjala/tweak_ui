import 'package:flutter/material.dart';
import 'package:tweak/components/text_field_container.dart';
import 'package:tweak/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final ValueChanged<String> validator;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {

  bool _isHidden = true;
  String _hT ='Password';

  void toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: widget.onChanged,
        validator: widget.validator,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: _hT,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: _isHidden ? Icon(Icons.visibility_off): Icon(Icons.visibility),
            color: kPrimaryColor,
            onPressed: (){
              toggleVisibility();
            },
          ),
          border: InputBorder.none,
        ),
        obscureText: _hT == "Password" ? _isHidden: false,
      ),
    );
  }
}
