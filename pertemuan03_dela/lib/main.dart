void main(){
  // Praktikum 1
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  bool test3= true;
  if (test3) {
    print("Kebenaran");
  }

  // Praktikum 2
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }

  do {
    print(counter);
    counter++;
  } while (counter < 77);

  // Praktikum 3
  for (int index = 10; index < 27; index++) {
    if (index == 21) break; 
    if (index > 1 && index < 7) continue; 
    print(index);
  }

  // Tugas Praktikum
  String nama = "Dela Farahita Zain";
  String nim = "2241720058";

  bool bilPrima(int angka) {
    if (angka < 2) {
      return false;
    }
    for (int i = 2; i <= angka ~/ 2; i++) {
      if (angka % i == 0) {
        return false;
      }
    }
    return true;
  }

  for (int i = 0; i <= 201; i++) {
    if (bilPrima(i)) {
      print("$i adalah bilangan prima.");
      print("Nama: $nama, NIM: $nim");
    }
  }
}