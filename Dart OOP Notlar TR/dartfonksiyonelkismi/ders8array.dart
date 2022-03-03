main(List<String> args) {
  List<int> numaralarim = List(5);
  var numaralarim2 = List(5);
  List<int> numaralarim3 = List.filled(5, 6); // 1. arg uzunluk
  // 2. arg varsayılan olarak her indexe atanılacak değeri ifade eder
  // List<int> numaralarim = List.filled(length,fill);
  print(numaralarim3);
  numaralarim[0] = 3;
  numaralarim[1] = 2;
  numaralarim[2] = 4;

  for (int i = 0; i < numaralarim.length; i++) print(numaralarim[i]);

  for (int i = 0; i < numaralarim.length; i++)
    print(numaralarim[i].toString() + " NUMARALAR");

  for (int okunanNumaralar in numaralarim) {
    //listeleri okumak için başka yöntem
    print("Okunan numara : $okunanNumaralar");
  }

  numaralarim.forEach((sayi) => print(sayi));

  //
  // DINAMIK ARRAY MEVZUSU
  //
  //Dinamik array de normal bir şekilde oluşturulur
  List<int> dinamikNumaralarim = List();
  dinamikNumaralarim.add(5); // önce add komutuyla yer açmamız gerekir
  //dinamikNumaralarim[1] = 5; yanlış bir ifadedir.
  dinamikNumaralarim[0] = 4; // yeri açtigi icin artık değişim yapabiliriz.
  print(dinamikNumaralarim);

  // ARRAYLER İLE İŞLEMLER
  dinamikNumaralarim.clear();
  // removes all objects from list.
  print(dinamikNumaralarim);
  // dinamikNumaralarim[0] = 4; yanlis bir ifadedir
  // clear atıldığında açılan alanlar da temizlenmiş olur
  dinamikNumaralarim.add(4);
  dinamikNumaralarim
      .remove(4); // yazılan value yu listedeki sahip olan indexlerden siler
  print(dinamikNumaralarim);
  dinamikNumaralarim.add(4);
  dinamikNumaralarim.removeAt(0);
  print(dinamikNumaralarim); // yazılan indexteki valueyu siler
  List<String> dinamikSehirler = [
    "a",
    "b",
    "c"
  ]; // BU KULLANIMDA DİNAMİK ARRAY OLUŞTURUR
  // DOLAYISIYLA ADD KOMUTU İLE VERİLERİ EKLEME YAPABİLİRİZ
  // dinamikSehirler[3] = "a"; dinamik kullanıldığı için yanlış
  // kullanımdır. daha yer açılmamış indexe value atılmaz
  dinamikSehirler.add("ardaptal");
  print(dinamikSehirler);
}
