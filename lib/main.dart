import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:growdev_nubank/widgets/back_card.dart';
import 'package:growdev_nubank/widgets/front_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(153, 51, 153, .5),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(109, 33, 119, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cartão do nubank'),
              Icon(Icons.credit_card),
            ],
          ),
        ),
        body: Center(
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: FrontCard(),
            back: BackCard(),
          ),
        ),
      ),
    );
  }
}
