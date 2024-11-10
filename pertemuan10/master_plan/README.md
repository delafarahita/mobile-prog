# Nama: Dela Farahita Zain
# Kelas: D4-TI/3B
# NIM: 2241720058

# Tugas Praktikum 1: Dasar State dengan Model-View
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
## Hasil


2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
Pada langkah 4 pembuatan file data_layer.dart yang bertujuan untuk menghubungkan model Task dan Plan secara lebih terorganisir. File ini mengekspor kedua model tersebut, sehingga saat model Task dan Plan diperlukan di bagian lain proyek, kita cukup mengimpor data_layer.dart. Ini menyederhanakan proses impor dan membuat kode lebih rapi serta mudah dikelola.

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
Variabel plan pada Langkah 6 adalah instance dari class Plan yang menyimpan daftar tugas dalam aplikasi. Variabel ini berfungsi melacak dan menampilkan semua tugas yang ada. plan dibuat sebagai konstanta (const Plan()) saat pertama kali diinisialisasi karena daftar awalnya kosong dan tidak memerlukan perubahan. Menggunakan const di sini lebih efisien dan menunjukkan bahwa nilai awal plan tetap. Seiring berjalannya aplikasi, plan akan diperbarui setiap kali ada tugas yang ditambahkan atau diubah.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
## Hasil

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
- Langkah 11 (initState Method):
initState adalah bagian dari siklus hidup widget yang dieksekusi sekali saat widget pertama kali dibuat. Di sini, initState digunakan untuk menginisialisasi ScrollController dan menambahkan listener yang akan menghilangkan fokus dari TextField ketika layar digulir. Ini membantu mencegah masalah UI yang mungkin timbul ketika keyboard muncul selama scroll.
- Langkah 13 (dispose Method):
dispose digunakan untuk membersihkan resource yang tidak lagi diperlukan ketika widget dihapus dari tampilan. Di sini, dispose membuang ScrollController saat PlanScreen tidak lagi aktif, yang membantu mencegah kebocoran memori.

# Tugas Praktikum 2: InheritedWidget
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

# Tugas Praktikum 3: State di Multiple Screens
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!
![alt text](images/TugasPrak3-No2.png)

3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!