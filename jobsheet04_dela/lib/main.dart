void main() {
  // Praktikum 1: Eksperimen Tipe Data List
  // Langkah 1:
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);

  // Langkah 3:
  final List<dynamic> finalList = List.filled(
      5, null); // Membuat list final dengan panjang 5 dan nilai default null

  finalList[1] = 'Dela Farahita Zain'; // Mengisi elemen indeks ke-1 dengan nama
  finalList[2] = '2241720058'; // Mengisi elemen indeks ke-2 dengan NIM

  print(finalList); // Mencetak isi list

  // Praktikum 2: Eksperimen Tipe Data Set
  // Langkah 1:
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Langkah 3:
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  // Menambahkan elemen menggunakan .add()
  names1.add('Dela Farahita Zain');
  names1.add('2241720058');

  // Menambahkan elemen menggunakan .addAll()
  names2.addAll({'Dela Farahita Zain', '2241720058'});

  print(names1);
  print(names2);
  print(names3);

  // Praktikum 3: Eksperimen Tipe Data Maps
  // Langkah 1:
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
    'nama': 'Dela Farahita Zain',
    'nim': '2241720058'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
    22417: 'Dela Farahita Zain',
    2241720058: 'NIM'
  };

  // Langkah 3:
  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['nama'] = 'Dela Farahita Zain';
  mhs1['nim'] = '2241720058';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[22417] = 'Dela Farahita Zain';
  mhs2[2241720058] = 'NIM';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);

  // Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators
  // Langkah 1:
//   var list1 = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list1);
//   print(list2);
//   print(list2.length);

//   // Langkah 3:
//   // Mendeklarasikan list1 dengan tipe yang mendukung null
//   List<int?> list01 = [1, 2, null];
//   print(list01);

//   // Variabel yang berisi NIM Anda
//   List<String> nimList = ['2241720058'];

//   // Membuat list3 dengan menggunakan spread operator
//   var list3 = [0, ...?list01, ...nimList]; // Menambahkan nimList ke list3
//   print(list3.length);
//   print(list3); // Mencetak isi list3

//   // Langkah 4:
//   bool promoActive = true;

//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);

//   // Langkah 5:
//   String login = 'Manager';

//   var nav2 = [
//     'Home',
//     'Furniture',
//     'Plants',
//     if (login == 'Manager') 'Inventory'
//   ];
//   print(nav2);

//   // Langkah 6:
//   var listOfInts = [1, 2, 3];
//   var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
//   assert(listOfStrings[1] == '#1');
//   print(listOfStrings);

//   // Praktikum 5: Eksperimen Tipe Data Records
//   // Langkah 1:
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);

//   print(tukar((1, 2)));

//   // Langkah 4:
//   // Record type annotation in a variable declaration:
//   (String, int) mahasiswa = ('Dela Farahita Zain', 2241720058);
//   print(mahasiswa);

//   // Langkah 5:
//   var mahasiswa2 = ('Dela Farahita Zain', a: 2, b: true, 2241720058);

//   print(mahasiswa2.$1); // Print 'Dela Farahita Zain'
//   print(mahasiswa2.a); // Print 2
//   print(mahasiswa2.b); // Print true
//   print(mahasiswa2.$2); // Print 2241720058
 }

// // Langkah 3:
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }
