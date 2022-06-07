import 'package:flutter/material.dart';
import 'package:flutter_game/models/game.dart';

class PopularGame extends StatelessWidget {
  final List<Game> ListGames = Game.generateGame();
   PopularGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height: 200,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 20
          ),

          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius:  BorderRadius.circular(15),
                child: Image.asset(ListGames[index].bgImg),
              ),
            ),
          ),
          separatorBuilder: (_, index) => const SizedBox(width: 10),
          itemCount: ListGames.length
        )
      );
  }
}