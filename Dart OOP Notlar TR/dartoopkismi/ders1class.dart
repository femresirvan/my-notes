//oop biliyorsun zaten vakit kaybedemem

class Ogrenci {
  int ogrNo;
  String adi;
  bool erkekMi;

  void derscalis() {}
  void uyu() {}
  void bilgileriYazdir() {
    print('No: ${this.ogrNo}, Adi: ${this.adi}, Cinsiyet: ${this.erkekMi}');
  } // this aldığımızda class içerisindekini alıyor gayet güzel js e çok az da olsa benziyor
}

main(List<String> args) {
  Ogrenci emre = Ogrenci();
  var hasan = Ogrenci();
  emre.ogrNo = 1306180020;
  emre.erkekMi = true;
  emre.adi = 'emre';
  print('Ogr Numarasi: ${emre.ogrNo}');
  emre.bilgileriYazdir();
}
