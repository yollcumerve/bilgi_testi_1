import 'package:flutter/material.dart';
import 'soru.dart';

class TestVeri {

   int _soruIndex = 0;
  List <Soru> _soruBankasi =[
    Soru(soruMetni:' Titanic gelmiş geçmiş en büyük gemidir', soruYaniti: false),
    Soru(soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır', soruYaniti: true),
    Soru(soruMetni: 'Kelebeklern ömrü bir gündür', soruYaniti: false),
    Soru(soruMetni: 'Dünya düzdür', soruYaniti: false),
    Soru(soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır', soruYaniti: true),
    Soru(soruMetni: 'Fatih Sultan hayatında hiç patates yememiştir', soruYaniti: true ),

    

  ];

  String getSoruMetni(){
      return _soruBankasi[_soruIndex].soruMetni;
    }


bool getSoruYaniti(){
  return _soruBankasi[_soruIndex].soruYaniti;
}

void sonrakiSoru (){
  if(_soruIndex+1 < _soruBankasi.length)
  _soruIndex++;
}


bool testBittiMi(){
  if(_soruIndex+1 >= _soruBankasi.length){
  return true;
  }else{
    return false;
  }
}

void indexSifirla() {
  
    _soruIndex= 0;
  
}
}

