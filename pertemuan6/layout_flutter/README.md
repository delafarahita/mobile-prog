# Nama: Dela Farahita Zain
# NIM: 2241720058
# Kelas: D-IV TI / 3B

# Tugas Praktikum 1
1. Selesaikan Praktikum 1 sampai 4, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!
2. Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics

# Praktikum 1: Membangun Layout di Flutter
## Langkah 1: Buat Project Baru
![alt text](image.png)
## Langkah 2: Buka file lib/main.dart
![alt text](image-1.png)
## Langkah 3: Identifikasi layout diagram
## Langkah 4: Implementasi title row
![alt text](image-3.png)
![alt text](image-4.png)
![alt text](image-2.png)

# Praktikum 2: Implementasi button row
## Langkah 1: Buat method Column _buildButtonColumn
![alt text](image-5.png)
## Langkah 2: Buat widget buttonSection 
![alt text](image-6.png)
## Langkah 3: Tambah button section ke body
![alt text](image-7.png)
![alt text](image-8.png)

# Praktikum 3: Implementasi text section
## Langkah 1: Buat widget textSection
![alt text](image-10.png)
## Langkah 2: Tambahkan variabel text section ke body
![alt text](image-11.png)
![alt text](image-9.png)

# Praktikum 4: Implementasi image section
## Langkah 1: Siapkan aset gambar
![alt text](image-12.png)
## Langkah 2: Tambahkan gambar ke body
![alt text](image-17.png)
## Langkah 3: Terakhir, ubah menjadi ListView
![alt text](image-18.png)
![alt text](image-19.png)

# basic_layout_flutter
## Lay out a widget
### 1. Select a layout widget
### 2. Create a visible widget
### 3. Add the visible widget to the layout widget
### 4. Add the layout widget to the page
![alt text](image-46.png)
## Cupertino apps
![alt text](image-48.png)
## Non-Material apps
![alt text](image-49.png)
## Lay out multiple widgets vertically and horizontally
### Aligning widgets
![alt text](image-52.png)
### Sizing widgets
![alt text](image-53.png)
![alt text](image-54.png)
### Packing widgets
![alt text](image-55.png)
### Nesting rows and columns
![alt text](image-56.png)
## Common layout widgets
### Container
![alt text](image-57.png)
### GridView
![alt text](image-58.png)
### ListView
![alt text](image-59.png)
### Stack
![alt text](image-60.png)
### Card
![alt text](image-61.png)

# Praktikum 5: Membangun Navigasi di Flutter
## Langkah 1: Siapkan project baru
![alt text](image-20.png)
## Langkah 2: Mendefinisikan Route
![alt text](image-21.png)
![alt text](image-22.png)
## Langkah 3: Lengkapi Kode di main.dart
![alt text](image-23.png)
## Langkah 4: Membuat data model
![alt text](image-25.png)
## Langkah 5: Lengkapi kode di class HomePage
![alt text](image-26.png)
## Langkah 6: Membuat ListView dan itemBuilder
![alt text](image-27.png)
## Langkah 7: Menambahkan aksi pada ListView
![alt text](image-28.png)
![alt text](image-29.png)

# Tugas Praktikum 2
1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.
```
Navigator.pushNamed(context, '/item', arguments: item);
```
![alt text](image-30.png)
2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)
```
final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
```
![alt text](image-31.png)
3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.
![alt text](image-32.png)
4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations
![alt text](image-35.png)
![alt text](image-36.png)
![alt text](image-37.png)
![alt text](image-33.png)
![alt text](image-34.png)
5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
![alt text](image-38.png)
![alt text](image-39.png)
6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!
![alt text](image-41.png)
![alt text](image-43.png)
![alt text](image-44.png)
