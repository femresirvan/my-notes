main(List<String> args) {
  //kullanımı java ve cpp ile aynı direk geçiyorum.
  //ternary leri anlatıcam ben de pek bakmamıştım.
  int sayi1 = 20, sayi2 = 25;
  sayi1 < sayi2 ? print("küçüktür") : print("büyüktür");
  // sayi1 sayi 2 den küçükse ? küçüktür yazdir.
  // değilse : büyüktür yazdır.
  // iki koşuluda koymamızı istiyor bizden.
  int kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  print(kucukSayi);
  int sayi = sayi1 ?? sayi2;
  // ?? geldiğinde sayi1 nullsa sayi2 yazdır diyoruz.

  // SWITCH
  String notDegeri = "BA";
  switch (notDegeri) {
    case "AA":
      print("AA");
      break;
    case "BA":
      print("BA");
      break;
    default:
      {
        //eger hicbiri çalışmazsa else gibi yani.
      }
  }
  //switch te aynı şekilde sayı değişkenine de yapılabilir.
}
