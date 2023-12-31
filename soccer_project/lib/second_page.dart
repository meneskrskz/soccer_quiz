import 'dart:math';
import 'package:flutter/material.dart';
import 'package:soccer_project/data.dart';

class second_page extends StatefulWidget {
  static String routeName = '/routeSecondPage';

  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  TestData test_1 = TestData();
  int selectPlayer = 0;
  List<String> playersIndex = [];

  fonksiyon() {
    List<String> yeniListe = [];
    // bu yeniListe quiz'de sorulan sadece doğru şıkkı tutmak için.
    yeniListe.add(test_1.soruBankasi[selectPlayer]);
    test_1.soruBankasi.removeAt(selectPlayer);
    // doğru şıktaki futbolcu asıl listeden çıkmalı ki diğer şıklara yerleşmesin ve bütün şıklar farklı olsun.

    for (var i = 0; i < 3; i++) {
      int randomNumber = Random().nextInt(test_1.soruBankasi.length);
      // diğer 3 şık için futbolcular random olarak geliyor ve doğru şıktaki adam yok.
      playersIndex.add(test_1.soruBankasi[randomNumber]);
      // diğer 3 şık için adamlar buraya ekleniyor.
      test_1.soruBankasi.removeAt(randomNumber);
      // futbolcular playersIndex'e eklendiği gibi asıl listeden siliniyor ki for döngüsü devam ederken bir kez daha şıklar birbirini tekrar etmesin.
    }
    playersIndex.insert(Random().nextInt(4), yeniListe[0]);
    // en sonunda doğru şıktaki adam şıklara random bir şekilde yerleşiyor bu sayede doğru şık her soruda random konumda oluyor.

    // doğru şıkkı bir if-else ifadesiyle kontorl edip selectPlayer++ olmalı ki bir sonraki fotoğraf gelsin.
    // oyuncu fotoğraflarını 0.jpg, 1.jpg  gibi isimlendirmemin sebebi bu.
  }

  @override
  Widget build(BuildContext context) {
    fonksiyon();
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.diamond_sharp,
                color: Colors.blue[200],
                size: 40.0,
              ),
            ),
          ),
        ],
        title: Icon(
          Icons.favorite,
          color: Colors.red[500],
          size: 30.0,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "GUESS THE SOCCER PLAYER",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50.0,
            ),
            Image.asset(
              "assets/images/$selectPlayer.jpg",
              width: 300.0,
              height: 300.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(playersIndex[0]),
                  // burada playersIndex'deki 0'ı keyfine yazdım çünkü zaten listede random tutuluyorlar.
                ),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(playersIndex[1]),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(playersIndex[2]),
                ),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(playersIndex[3]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
