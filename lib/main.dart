//Gelir Yönetim Uygulaması
// Bir çok yerden geliri olan insanlara nereden
// ne zaman aidat veya kira alınacağını raporlayan
// işlevsel bir gelir yönetim uygulaması. Bu uygulamayı
// kullanarak bir çok insanı muhasebe yönünden kurtara bilirsiniz.
// Ayrıca, ödemeleri uygulama üzerinden alabilecekleri
// entegrasyonlarla sadece üyelik bedelinizi alıp gelir
// insanları daha kolay gelir yönetimi yapmasını sağlayabilirsiniz.
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent, //Göbek Arka Plan
        appBar: AppBar(
          centerTitle: true, //Başlık ortala
          backgroundColor: Colors.teal, //Başlık Arka Plan Rengi
          title: Text(
            "RANDOM YEMEK UYGULAMASI",
            style:TextStyle(color:Colors.deepOrange //Başlık Yazı rengi
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
   int corbaNo= 1;
   int yemekNo=1;
   int tatliNo=1;

   List<String> corbaAdlari=[
     'Mercimek',
   'Tarhana',
   'Tavuk Suyu',
   'Düğün çorbası',
   'Yoğurt Çorbası'
   ];
   List<String> yemekAdlari=[
     'Karnıyarık',
     'Mantı',
     'Kuru Fasulye',
     'içli Köfte',
     'Balık'
   ];
   List<String> tatliAdlari=[
     'Kadayıf',
     'Baklava',
     'Sütlaç',
     'Kazandibi',
     'Dondurma'
   ];


   void yemekleriYenile(){
     setState(() {
       corbaNo=Random().nextInt(5)+1;
       yemekNo=Random().nextInt(5)+1;
       tatliNo=Random().nextInt(5)+1;
     });
   }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(  // Resim Üstü butonu
              color:Colors.yellow, //Devamlı buton çizgisi
                highlightColor: Colors.blue, //basılı tutunca yanan buton çizgisi
                splashColor:Colors.black, // dalgalanma buton çizgisi
                onPressed: yemekleriYenile,

                child: Image.asset('assets/corba_$corbaNo.jpg')),
          )),
          Text(
            corbaAdlari[corbaNo-1],
            style:TextStyle(fontSize:20),
          ),
          Container(
            width: 200,
            child: Divider(
              height:5,
              color: Colors.black,
            ),
          ),
          Expanded(child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
              color:Colors.tealAccent,
                highlightColor: Colors.blue,
                onPressed: () {
                setState(() {
                  yemekNo=Random().nextInt(5)+1;
                  print('Yemek no:$yemekNo');
                });
                },
                child: Image.asset('assets/yemek_$yemekNo.jpg')),
          )),
          Text(
            yemekAdlari[yemekNo-1],
                style: TextStyle(fontSize:20),
          ),
          Container(
            width: 200,
    child: Divider(
    height:5,
    color: Colors.black,
    ),
    ),
          Expanded(child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
              color:Colors.tealAccent,
                splashColor:Colors.black,
                onPressed: () {
                setState(() {
                  tatliNo=Random().nextInt(5)+1;
                });
                print('Tatlı no:$tatliNo');
                },
                child: Image.asset('assets/tatli_$tatliNo.jpg')),
          )),
          Text(
            tatliAdlari[tatliNo-1],
            style:TextStyle(fontSize:20),
          ),
          Container(
            width: 200,
            child: Divider(
              height:5,
              color: Colors.black,
            ),
          ),


        ],
      )
    );
    /*
    SafeArea(
      child: Column(
        children: [
          Container(
            child: Text('Zeynep Tetik'),
            padding: EdgeInsets.all(30.0),
            margin: EdgeInsets.fromLTRB(12, 0, 15, 40),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.teal,
            ),
          ),
          Container(
            child: Center(
              child: Image.network(
                  'https://play-lh.googleusercontent.com/wPddEGtxRQiyPk2TKagzwiRn0IsPyKQ_2Xakwmk9PRnk5m7MI9QYYt0M8lqgoNKBcp3O=w412-h220-rw'),
            ),
          ),
        ],
      ),
    );
    */
  }
}


  
