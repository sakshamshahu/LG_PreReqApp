import 'package:flutter/material.dart';

class Button {
  MaterialColor color;
  String messageText;
  String buttoncolor;
  Button(this.color, this.messageText, this.buttoncolor);
}

List<ElevatedButton> buttons(BuildContext context) {
  List<Button> buttColors = <Button>[
    Button(Colors.green,  'THIS IS ONE', 'Green'),
    Button(Colors.yellow, '#METWO' , 'Yellow'),
    Button(Colors.blue, 'I am threeeee', 'Blue'),
    Button(Colors.red, 'I am the last ONE', 'Red'),
  ];

var buttons = <ElevatedButton>[];
buttColors.asMap().forEach((key, value) {
    buttons.add(
      ElevatedButton(
        onPressed: () {
          var text = value.messageText;
          var snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(snackBar); 
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: value.color,
          foregroundColor: Colors.black
        ),
        child: Text(
            " THIS IS THE ${value.buttoncolor} BUTTON"), 
      ),
    );
  });
  return buttons;
}