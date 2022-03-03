main(List<String> args) {
  // DEGİSKENLER
  // Dart dili type protected bir dildir. Kafamıza göre değişkenin tipini değiştiremeyiz.
  // !Fakat parsing işlemi yapabiliriz.
  // Dart dilinde javadaki gibi primitive tipler yoktur. Bütün değişkenler bir objedir.
  // Dolayısıyla atanmayan değer null olur.
  // number,
  // numda hem int hem de double değer atanabilir.
  num sayiint = 25;
  num sayidouble = 22.5;
  // sayiint = 25.5; YANLIŞ BİR İFADEDİR ÇÜNKÜ DART TYPE PROTECTED BİR DİLDİR.

  // VARIABLE
  // var ifadesini bütün değişkenler için kullanabiliriz.
  // fakat yine atıyorum int bir ifadeyi string yapamayız.
  var emre = 20;
  var ahmet = "8882";

  // String ifadeler
  // java veya c deki gibi char ifadesi flutter da yok.
  String isim = "Firat Emre";
  print(
      "Interpolation Kavramı: $isim böylelikle değişkeni çift tırnak içerisinde yazdırabiliriz.");
  print("${isim.length}");
  // sayi.to.String() stringe çevirir.
  // Final Ve Const Kavramları
  // Her iki kavram da sabit değişken oluşturmak için kullanılır.
  // final kullanıldığında sadece erişildiğinde bellekte alanı olur.
  // const kullanırsak ise bellekte program çalıştığı gibi yeri ayrılır.
  final String degismeyendegisken =
      "SOK"; // kullanmadigimiz için bellekte yeri ayrılmadı.
}
