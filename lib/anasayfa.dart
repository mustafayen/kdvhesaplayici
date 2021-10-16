import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/sonuc.dart';
import 'package:flutter_app/sonuc2.dart';

int oran;
int para;
var sonuc;
var sonuc2;

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                autofocus: true,
                maxLength: 15,
                cursorColor: Colors.red,
                onChanged: (value){
                  setState(() {
                    para=int.parse(value);
                  });
                },

                decoration: InputDecoration(
                  labelText: "PARA",
                  prefixIcon: Icon(Icons.money),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                maxLength: 2,
                cursorColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    oran=int.parse(value);
                  });
                },


                decoration: InputDecoration(
                  labelText: "KDV ORANI",
                  prefixIcon: Icon(CupertinoIcons.percent),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SafeArea(
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  ElevatedButton(
                    onPressed: fonksiyon,
                    child: Text("GİRDİĞİM TUTARA \n KDV DAHİL",
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[900],
                      onPrimary: Colors.yellow,
                    ),

                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(
                    onPressed: fonksiyon2,
                    child: Text("GİRDİĞİM TUTARA \n KDV DAHİL DEĞİL",
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[200],
                      onPrimary: Colors.pink,
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void fonksiyon() {
    if(para!=null&&oran!=null) {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResultPage2()),
      );
      sonuc2=para-(para*oran/100);
    }
  }



  void fonksiyon2() {
    if(para!=null&&oran!=null) {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResultPage()),
      );
      sonuc=(para*oran/100)+para;
    }
  }


}
