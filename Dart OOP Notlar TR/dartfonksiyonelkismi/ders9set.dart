main(List<String> args) {
  /* 
  SET
  Arraylerden farklı olan yanı indexleri kullanamamız.
  Bir diğer farkı bir elemandan sadece bir tane olur yani her elaman birbirinden farklıdır.
  index olmadan elemanları kontrol etmek için contains methodu 
  kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
  Böylelikle tekrar tekrar aynı elemanı kullanmayız ve böylelikle kura çekilişi gibi bir uygulama yapsak
  ve bir çıkan bir daha çıkmama gibi bir durum varsa daha flex işi çözebiliriz.
  */
  Set<String> isimler = Set();
  var isimler2 = Set();
  isimler.add("Emre");
  isimler.add("Firat");
  isimler.add("Ceren");
  isimler.add("Emre"); // BU EKLENMEYECEK ÇÜNKÜ EMRE ÖNCEDEN EKLENDİ
  //! SETLERDE SIRA ÖNEMSENMEDEN EKLENİR
  print(isimler);
  if (isimler.contains("Emre")) {
    //SETLERİN KULLANIMI
    print(true);
    print("Emre\n");
  }
  isimler.remove("Emre");
  print(isimler);

  //SET OLUŞTURMA BAŞKA YOL
  Set<int> numaralar = Set.from([1, 2, 3, 3, 3, 3, 3, 3]);
  print(numaralar);
  List<int> listeliNumaralar = [2, 4, 5, 5];
  numaralar.addAll(listeliNumaralar); // DİZİDEKİ ELEMANLARI SETE EKLEDİM
  print(numaralar);
}
