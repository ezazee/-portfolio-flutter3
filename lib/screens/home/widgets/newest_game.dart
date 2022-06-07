import 'package:flutter/material.dart';
import 'package:flutter_game/constants/colors.dart';
import 'package:flutter_game/models/game.dart';

class NewestGame extends StatelessWidget {
  final List<Game> ListGames = Game.generateGame();
   NewestGame ({ Key? key }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
          children: ListGames.map((e) => 
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(e.icon, width: 50,),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                         ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(e.type,
                                style: TextStyle(
                                  color: Colors.grey.withOpacity(0.7)
                                ),
                                ),
                                const SizedBox(height: 2),
                               buildStart(),
                              ],
                            ),
                          buildButton(),
                          ],
                        )
                      ],
                    )
                  )
                ]
              ),
            )
          ).toList(), 
      ),
    );
  }

  Widget buildStart() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3)
    ];
    return Row(
      children: color.map((e) => 
      Icon(Icons.star, size: 20, color: e,)
      ).toList(),
    );
  }
  
 Widget buildButton() {
   return Container(
     padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15, ),
     decoration: BoxDecoration(
       color: kPrimary,
       borderRadius: BorderRadius.circular(15),
     ),
     child: const Text(
       'install',
       style: TextStyle(
         color: Colors.white,
       ),
     ),
   );
 }

}