import 'package:flutter/material.dart';
import 'constances.dart';
import 'test_veri.dart';

void main(List<String> args) {
  runApp (BilgiTesti());

}

class BilgiTesti extends StatelessWidget {
  const BilgiTesti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child:SoruSayfasi(),
          )),
      ),
    );
    
  }
}

class SoruSayfasi extends StatefulWidget {
  const SoruSayfasi({Key? key}) : super(key: key);

  @override
  State<SoruSayfasi> createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  
  
  List <Widget> secimler=  [];

  void ButonFonksiyonu(bool secilenButon){
  if(test_1.testBittiMi() == true){
    showDialog(context: context,
     builder: (BuildContext context) {
       return AlertDialog(
         title: Text('TESTİ BİTİRDİNİZ'),
         actions: [
           FlatButton(
             child: Text('Başa Dön'),
             onPressed: () {
               Navigator.of(context).pop();
               setState(() {
                 test_1.indexSifirla();
                 secimler=  [];
               });
             }, )
         ],
       );

    });
    
  }

    else{setState(() {
      if(test_1.getSoruYaniti() == secilenButon){
        secimler.add(dogruIconu);
        }else{
        secimler.add(yanlisIconu);
        }
                          
        test_1.sonrakiSoru();}
    );};

  }

  TestVeri test_1 = TestVeri();
  
 

  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
                ),
            ),
          ),
        ),
        
        Wrap(
          spacing: 3,
          runSpacing: 3,
          children: secimler,
        ),




        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Icon(Icons.thumb_down,
                      size: 30.0,
                      ),
                      onPressed: () {
                        ButonFonksiyonu(false);
                        
                        
                      }
                      ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Icon(Icons.thumb_up,
                
                      size: 30,),
                      onPressed: () {
                        ButonFonksiyonu(true);},
                        )
                      )
                  ),
               ] )
              
            ),
          ),
        
      ],
    );
  }
}

