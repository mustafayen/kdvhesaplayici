import 'package:flutter/material.dart';
import 'package:flutter_app/anasayfa.dart';

class ResultPage extends StatefulWidget {
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("KDV HESAPLAYICI",
              style: TextStyle(
                color: Colors.grey[100],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(
                    color: Colors.red,
                  ),
                  children: [
                    TableRow(
                      children: [
                        Text("GİRDİĞİNİZ TUTAR",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Text("KDV DAHİL TUTAR",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("$para TL",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Text("$sonuc TL",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: anasayfaFonk2,
                  child: Text("Ana Sayfaya Dönüş"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void anasayfaFonk2() {
     Navigator.push(
      context, MaterialPageRoute(builder: (context) => AnaSayfa()),
    );
     para=null;
     sonuc2=null;
     sonuc=null;
     oran=null;
  }
}

