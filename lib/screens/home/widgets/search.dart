import 'package:flutter/material.dart';
import 'package:flutter_game/constants/colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 30,
        ),
        child: Stack(
          children: [
            TextField(
              cursorColor: kPrimary,
              decoration: InputDecoration(
                fillColor: const Color(0xFFF6F8FF),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 20,
                ),
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: kPrimary,
                  size: 30,
                ),
                hintText: 'Cari Sesuatu ?',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimary,
                ),
                child: const Icon(
                  Icons.mic_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ) 
              )
          ],
        )
      );
  }
}