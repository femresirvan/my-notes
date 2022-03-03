//GETTER SETTER
//CONSTRUCTOR
//PRIVATE DEĞERLER
//CLASS EKLEMEK İÇİN
//import 'Ogrenci.dart';
//ogrenci.dart ta ise sadece sınıf olsun.
main(List<String> args) {
  var emre = Ogrenci(10, 'emre', true);
  emre.bilgileriYazdir();
  Ogrenci ayse = Ogrenci.bilgisizkurucu();
  Ogrenci doggy = Ogrenci.cinsiyetsizkurucu('tekir', 123);
  doggy.bilgileriYazdir();
  emre.setPrivateDeger = 5; //GETTER VE SETTERLARIN KULLANIMI
  print(emre.getprivateDeger);
}

class Ogrenci {
  int ogrNo;
  String adi;
  bool erkekMi;
  int _privateDeger;
  Ogrenci(int no, String ad, bool erkekMi) {
    // default constructor :)
    this.ogrNo = no;
    this.adi = ad;
    this.erkekMi = erkekMi;
  }
  Ogrenci.bilgisizkurucu() {
    //OVERLOADINGE BU ŞEKİLDE İZİN VERİLİYOR!!!
    print("Constructor tetiklendi");
  }
  //BİR BAŞKA CONSTRUCTOR TARZI
  Ogrenci.cinsiyetsizkurucu(this.adi, this.ogrNo);
  void derscalis() {}
  void uyu() {}
  void bilgileriYazdir() {
    print('No: ${this.ogrNo}, Adi: ${this.adi}, Cinsiyet: ${this.erkekMi}');
  }

  //SETTER VE GETTERLAR DA BU ŞEKİLDE
  void set setPrivateDeger(int privateDeger) {
    this._privateDeger = privateDeger;
  }

  int get getprivateDeger {
    return this._privateDeger;
  }
}
