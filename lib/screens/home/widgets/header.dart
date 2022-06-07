import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: 25,
          right: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                  Text('Selamat Datang',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5,),
                Text('Mohamad Reza',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white
                ),
                ),
              ],
            ),
            CircleAvatar(
              child: Image.asset('assets/images/avatar.png',
              fit: BoxFit.cover,
              ),
            )
          ],
        ),
      );
  }
}