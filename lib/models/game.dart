class Game{
  String bgImg;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String desc;
  List<String> imgs;
  Game(
    this.bgImg,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.desc,
    this.imgs
  );
  static List<Game> generateGame() {
    return [
      Game(
        'assets/images/ori1.jpg',
        'assets/images/ori_logo.png',
        'Ori And The Blind Forest',
        'Adventure',
        4.8,
        382,
        324,
        'The litle Spirit ori is no Stranger to the forest. He is a very good ',
        [
          'assets/images/ori2.jpg'
          'assets/images/ori3.jpg'
          'assets/images/ori4.jpg'
          'assets/images/ori5.jpg'
        ],
      ),
      Game(
        'assets/images/rl1.jpg',
        'assets/images/rl_logo.png',
        'Rayman Legend',
        'Adventure',
        4.8,
        382,
        324,
        'The litle Spirit ori is no Stranger to the forest. He is a very good ',
        [
          'assets/images/ori2.jpg'
          'assets/images/ori3.jpg'
          'assets/images/ori4.jpg'
          'assets/images/ori5.jpg'
        ],
      )
    ];
  }
}
 