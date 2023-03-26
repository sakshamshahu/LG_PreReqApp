import 'package:flutter/material.dart';

class Button {
  MaterialColor color;
  String messageText;
  Button(this.color, this.messageText);
}

List<ElevatedButton> buttons(BuildContext context) {
  List<Button> buttColors = <Button>[
    Button(Colors.green,  'THIS IS ONE'),
    Button(Colors.yellow, '#METWO'),
    Button(Colors.blue, 'I am threeeee'),
    Button(Colors.red, 'I am the last ONE'),
  ];

var buttons = <ElevatedButton>[];
buttColors.asMap().forEach((key, value) {
    buttons.add(
      ElevatedButton(
        onPressed: () {
          var text = value.messageText;
          var snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar() // removes previous snackbar if present
            ..showSnackBar(snackBar); // shows new snackbar with message
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: value.color,
        ),
        child: Text(
            " THIS IS BUTTON ${key + 1}"), 
      ),
    );
  });
  return buttons;
}