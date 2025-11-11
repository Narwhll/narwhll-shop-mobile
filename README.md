

## TUGAS 7

### 1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.:

- Widget tree adalah sebuah struktur yang menampung beberapa widget. Parent dari widget tree berfungsi untuk mengatur letak/posisi dari anak anaknya (widget). 

### 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.:
- Scaffold: menjadi kerangka dasar app, buat body dan appbar(navbar)
- AppBar: navigation bar
- Padding: memberikan jarak di sekeliling 
- Column: menyusun widget secara vertikal
- Row: menyusun widget secara horizontal
- Center: meng center widget
- GridView: menyusun widget dalam bentuk grid
- SizedBox: membuat kotak kosong (buat gap gitu)
- Container: container buat berbagai widget
- Card: kotak dengan shadow
- Text: menampilkan teks
- Icon: menampilkan icon
- Material: buat properti permukaan widget (kayak warna background)
- InkWell: buat ItemCard biar bisa di klik
- SnackBar: macam toast
- ScaffoldMessenger: buat ngirim pesan ke snackbar
- MyHomePage: widget utama buat jadi pagenya
- InfoCard: widget buat card yang nampilin npm, nama, kelas
- ItemCard: widget buat card yg button all products, my products, create products

### 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.

- MaterialApp berfungsi sebagai pengatur global app, kalo di tugas tugas sebelumnya ini mirip dengan base.html. Sering dipakai sebagai widget root karna dari bawaannya udah lengkap, contoh udh bisa set tema app, sistem navigasi, dan menampilkan material design.

### 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?

- StatelessWidget adalah widget yang tidak akan berubah (immutable). Biasa dipakai kalo mau menampilkan sesuatu yang memang sudah fix tidak diganti ganti. Kalau StatefulWidget, biasanya dipakai untuk widget yang rawan berubah, seperti saat nampilin count klik dll.

### 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?

- BuildContext digunakan untuk suatu widget menginherit dari superclass superclassnya. Tanpa build context, suatu widget akan bingung mendapat konteks dari mana. Contohnya ketika mau pakai color tema app, kalo ga ada build context dia gabakal tau color tema utama appnya apa. Penggunaannya di metode build menggunakan context yang ada di Widget build(BuildContext context). Kalo mau ambil warna tema, tinggal Theme.of(context).colorScheme.

### 6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".

- Kalo hot reload, dia membangun ulang widget, tapi mempertahankan state, sedangkan kalo restart, dia bener bener bangun ulang seluruh app, jadi semua state juga ulang dari awal.


## TUGAS 8

### 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?

- Kalo yang .push(), dia menambah page web ke atas stack, dan mempertahankan stack yang sudah ada, sehingga ketika menekan back button, dia kembali ke page terakhir yang dikunjungi. Kalau yang .pushReplacement(), dia menghapus stack dan menggantinya dengan page yang dituju, sehingga jika setelahnya menekan back button, dia akan keluar dari app karna tidak ada page tersisa di stack. Umumnya pushReplacement digunakan pas ke Home.

### 2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?

- Di dalam scaffold utama setiap page, aku membuat appbar sesuai page, kemudian mengimpor left drawer dari left_drawer.dart agar semua page yang memiliki appbar mempunyai drawer yang sama dan konsisten.

### 3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

-  Padding berguna untuk menjaraki satu input form dengan input form yang lainnya. 
- SingleChildScrollView membuat agar konten bisa discroll, kalo di app aku contohnya di form itu pake SingleChildScrollVIew biar kalau misal isi formnya banyak/layar screennya kekecilan, dia ga bakal overflow eror dan jadinya bisa di scroll.
- ListView digunakan untuk menampilkan daftar objek dalam susunan yang dapat di scroll. Mirip sama column/row tapi bedanya bisa discroll. Di appku contohnya di left drawer, untuk menyusun elemen2nya itu pakai ListView.

### 4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?

- Dari main.dart khususnya widget MaterialApp, kita dapat menentukan colorScheme dari aplikasi kita. Setelahnya, kalau mau pakai warna dari colorScheme ini kita dapat memanggilnya di page manapun dengan menggunakan Theme.of(context)