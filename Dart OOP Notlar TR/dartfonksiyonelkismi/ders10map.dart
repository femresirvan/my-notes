main(List<String> args) {
  //klasik key:value şeklinde
  Map<String, Object> kisiler = Map();
  //HERHANGİ VERİ TÜRÜYSE OBJECT DEĞİLSE VERİ TÜRÜNÜ YAZARIZ.
  kisiler["ad"] = "emre";
  kisiler["yas"] = 20;
  kisiler["erkekMi"] = true;
  print(kisiler);
  for (String key in kisiler.keys) {
    print("Key degeri: $key");
  }
  for (Object value in kisiler.values) {
    print("Value: $value");
  }
  kisiler.forEach((key, value) => print("key: $key value: $value"));
  kisiler.forEach((key, value) {
    print("key: $key value: $value");
  });
  //UPDATE METHODU
  kisiler.update("yas", (value) => 32);
  print(kisiler);
  print(kisiler["yas"]);
}
