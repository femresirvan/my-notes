import 'dart:io';
import 'dart:math';

main(List<String> args) {
  //LIST GENERATE METHODU
  // List<int> ogrenciNumaralari = List.generate(30, (index) => randogrenci();
  //generate ile tıpkı fill gibi fakat elemanları fonksiyon ile oluşturma imkanı sunuyor
  List<int> ogrenciNumaralari = List.generate(30, (index) {
    // 2 farklı kullanım.
    return randogrenci();
  });
  ogrenciNumaralari.forEach((element) {
    print(element);
  });

  //LIST MAP METHODU
  List<Ogrenci> tumOgrenciler = ogrenciNumaralari.map((ogrNo) {
    // map ile bütün elemanları gezebiliyoruz.
    return Ogrenci("Ogrenci $ogrNo Adı", ogrNo);
  }).toList();

  tumOgrenciler.forEach((element) {
    print("Ogrenci adı : ${element}");
  });
}

int randogrenci() {
  int no = Random().nextInt(60);
  //nextint kurucudur. random constructorunun ayrı kurucularındandır.
  return no;
}

class Ogrenci {
  String ad;
  int no;

  Ogrenci(this.ad, this.no);

  @override
  String toString() {
    return "$ad Ogrenci Numarası: $no";
  }
}
