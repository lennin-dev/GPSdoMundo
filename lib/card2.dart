import 'package:flutter/material.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      //1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://aventurasnahistoria.uol.com.br/media/_versions/legacy/2019/01/17/o-bondinho-pao-de-acucar-capa-1124277_widexl.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(children: [
          const AuthorCard(
            authorName: 'Adam Simon',
            title: 'Software Engineer',
            imageProvider: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/6/63/Screenwriter_ADAM_G._SIMON.jpg'),
          ),
          Expanded(
            //2
            child: Stack(
              children: [
                //3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Rio',
                    style: GpsdoMundoTheme.darkTextTheme.headline1,
                  ),
                ),
                //4
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Pão de Açucar',
                        style: GpsdoMundoTheme.darkTextTheme.headline1,
                      )),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
