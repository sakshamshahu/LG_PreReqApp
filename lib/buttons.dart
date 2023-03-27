import 'package:flutter/material.dart';
//exporting button and its properties from this dart file to avoid code clutter

class Button {
  MaterialColor color;
  String messageText;
  String buttoncolor;
  Button(this.color, this.messageText, this.buttoncolor);
}

List<ElevatedButton> buttons(BuildContext context) {
  List<Button> buttColors = <Button>[
    Button(Colors.green, 'THIS IS ONE', 'Green'),
    Button(Colors.yellow, '#METWO', 'Yellow'),
    Button(Colors.blue, 'I am threeeee', 'Blue'),
    Button(Colors.red, 'I am the last ONE', 'Red'),
  ];

//using map method - The map uses the indices of this list as keys and the corresponding objects as values (helps us iterate through the List)
  var buttons = <ElevatedButton>[];
  buttColors.asMap().forEach((key, value) {
    buttons.add(
      ElevatedButton(
        onPressed: () {
          var text = value.messageText;
          var snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(snackBar); //responsive snackbar on button press
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: value.color, foregroundColor: Colors.black),
        child: Text(
            " THIS IS THE ${value.buttoncolor} BUTTON"), //recognising buttons through their color
      ),
    );
  });
  return buttons;
}
