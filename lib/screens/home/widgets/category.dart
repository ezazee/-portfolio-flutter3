import 'package:flutter/material.dart';
import 'package:flutter_game/screens/home/widgets/newest_game.dart';
import 'package:flutter_game/screens/home/widgets/popular.dart';

class Category extends StatelessWidget {
 Category({Key? key}) : super(key: key);

  final List = [
    {
      'icon': Icons.track_changes_outlined,
      'color': Color.fromARGB(255, 255, 255, 255),
      'title': 'arcade' 
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': Color.fromARGB(255, 255, 255, 255),
      'title': 'motosport' 
    },
    {
      'icon': Icons.casino_outlined,
      'color': Color.fromARGB(255, 255, 255, 255),
      'title': 'casino' 
    },
    {
      'icon': Icons.sports_esports_outlined,
      'color': Color.fromARGB(255, 255, 255, 255),
      'title': 'sport' 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF6F8FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        )
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.all(25),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => Column(
                children: [
                  Container(
                    padding:  const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: List[index] ['color'] as Color
                    ),
                    child: Icon(List[index] ['icon'] as IconData, color: Color.fromARGB(255, 0, 158, 226), size: 45,),
                  ),
                  const SizedBox(height: 10,),
                  Text(List[index] ['title'] as String,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 12,
                  ),
                  )
                ],
              ),
              separatorBuilder: (_, index) => const SizedBox(width: 33,),
              itemCount: List.length,
              ),
          ),
          buildTitle('Paling Popular'),
          PopularGame(),
          buildTitle('Paling Baru'),
          NewestGame(),
        ],
      ),
    );
  }

  Widget buildTitle(String text) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 25),
      width: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        )
      )
    );
  }
}