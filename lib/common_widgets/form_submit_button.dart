import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_raised_button.dart';

class FormSubmitButton extends CustomRaisedButton{
  FormSubmitButton({
    @required String text,
    VoidCallback onPressed,
}): super(
    child: Text(
      text,
      style: TextStyle(
        fontSize: 17.0,
      ),
    ),
    height: 45.0,
    borderRadius: 15.0,
    onPressed: onPressed,
  );
}