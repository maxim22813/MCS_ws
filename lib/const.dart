import 'package:flutter/material.dart';

const inButtonsText = TextStyle (
    color: Colors.white, fontSize: 22, fontFamily: 'Roboto',
    shadows: [
      Shadow( // bottomLeft
          offset: Offset(-1.1, -1.1),
          color: Colors.black
      ),
      Shadow( // bottomRight
          offset: Offset(1.1, -1.1),
          color: Colors.black
      ),
      Shadow( // topRight
          offset: Offset(1.1, 1.1),
          color: Colors.black
      ),
      Shadow( // topLeft
          offset: Offset(-1.1, 1.1),
          color: Colors.black
      ),
    ]
);