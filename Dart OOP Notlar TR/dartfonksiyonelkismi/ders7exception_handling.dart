main(List<String> args) {
  //ISTISNA YÖNETİMİ EXCEPTION HANDLING KAVRAMI
  //Bu programlamadaki en önemli kavramlardan biridir.
  //Programımız mesela bir json datasına erişmeye çalışıyor fakat bu json datasını bulamadı.
  //Bulamadığı durumda error verip kapanmasındansa bu erroru handle ve catch edip programı hala
  //çalışır vaziyette devam ettirebiliriz.
  //bu arada javadaki bütün kaçı şeyleri bundada çalışıyor he.
  //ve printten sonra bir newline atıyor

  print("olası hatanın adı veya sebebi biliniyorsa");
  try {
    int sonuc = 12 ~/ 0;
    print("Bölüm: $sonuc");
  } on IntegerDivisionByZeroException {
    // eğer hatanın ne olacağını biliyorsak bu şekilde yazarız.
    print("bölen 0 olma hatası");
  }

  print("olası hatanın adı veya sebebi bilinmiyorsa");
  try {
    int sonuc = 12 ~/ 0;
    print("Bölüm: $sonuc");
  } catch (err) {
    print("Err: $err");
  }

  print(
      "olası hatanın adı veya sebebi bilinmiyorsa ve stack trace ile görmek istiyorsak");
  try {
    int sonuc = 12 ~/ 0;
    print("Bölüm: $sonuc");
  } catch (err, s) {
    print("Err: $err $s");
  }
  print("son olarak da hata çıksın çıkmasın çalışan blok");
  try {
    int sonuc = 12 ~/ 0;
    print("Bölüm: $sonuc");
  } catch (err, s) {
    // 1. parametre error 2. parametre stack trace istediğin ismi koy.
    print("Err: $err $s");
  } finally {
    print("finally blogu parametre almaz.");
  }

  // SON OLARAK DA YİNE ÇOK ÖNEMLİ KONU KENDİ EXCEPTIONINI YAPMA ADIM ADIM
  // AŞAĞIYA EXCEPTION VE FONK OLUŞTURDUM.
  try {
    paraYatir(-10);
  } catch (err) {
    print("Hata: " + err.hataGoster());
  }
}

class ParaYatirmaException implements Exception {
  String hataGoster() => "Negatif sayı girdiniz";
}

void paraYatir(int miktar) {
  if (miktar < 0) {
    throw new ParaYatirmaException();
  } else {
    print("Hesabınıza $miktar TL yatırıldı.");
  }
}
