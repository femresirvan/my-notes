main(List<String> args) {
  //öncelikle bu dil js gibi python gibi bir main scope u içerisinde yazılmadan oluşan bir
  //dil değil. dolayısıyla kodu yazarken main fonk içerisine ayrı bir fonk yazamıyoruz.
  //geri döndürmesi gerekip gerekmediğini(void) veya geri dönen değerin hangi tipte olacağını fonk'da belirtmesek de çalışır.
  //ama yinede yazarsak daha perf lı çalışır.

  //Fat Arrow
  //eğer tek satırlı fonksiyonsa
  //int dayi() => kamsdkaskdamksdm;
  // şeklinde yazılabilir.
  // METHOD OVERLOADING FLUTTER DA YOK! Yani aynı fonk dan 2 kere atıp farklı parametrelerle çalıştıramıyoruz.
  fonksiyonyaz(25);
  fonksiyonyaz2(parametre2: 25, parametre1: 12); // şeklinde de kullanabiliriz.
  //fonksiyonyaz2 de dikkat edilmesi gereken husus bu şekilde
  //kullanıyorsak kullanacağımız değişkenleri süslü parantezle göstermemiz gerekir.

  //özetle süslü parantez isimlendirilmesi gereken değişkenleri,
  //köşeli(dik) parantez ise zaruri atamamız gerekmeyin değişkeni belirtir.
}

int fonksiyonyaz(int parametre1, [int parametre2]) {
  // dik parantezle tutarsan herhangi bir parametre vermeden de çalıştırabilirsin.
  //bu bir fonksiyondur.
  return parametre1 + parametre2;
}

int fonksiyonyaz2({int parametre1, int parametre2}) {
  return parametre1 + parametre2;
}

int fonksiyonyaz3(int parametre1, [int parametre2 = 2]) {
  // dik parantezle tutulan degere varsayilan deger de atayabiliriz.
  return parametre1 + parametre2;
}
