

<h1>TUGAS 7</h1>

1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.:

- Widget tree adalah sebuah struktur yang menampung beberapa widget. Parent dari widget tree berfungsi untuk mengatur letak/posisi dari anak anaknya (widget). 

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.:
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

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.

- MaterialApp berfungsi sebagai pengatur global app, kalo di tugas tugas sebelumnya ini mirip dengan base.html. Sering dipakai sebagai widget root karna dari bawaannya udah lengkap, contoh udh bisa set tema app, sistem navigasi, dan menampilkan material design.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?

- StatelessWidget adalah widget yang tidak akan berubah (immutable). Biasa dipakai kalo mau menampilkan sesuatu yang memang sudah fix tidak diganti ganti. Kalau StatefulWidget, biasanya dipakai untuk widget yang rawan berubah, seperti saat nampilin count klik dll.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?

- BuildContext digunakan untuk suatu widget menginherit dari superclass superclassnya. Tanpa build context, suatu widget akan bingung mendapat konteks dari mana. Contohnya ketika mau pakai color tema app, kalo ga ada build context dia gabakal tau color tema utama appnya apa. Penggunaannya di metode build menggunakan context yang ada di Widget build(BuildContext context). Kalo mau ambil warna tema, tinggal Theme.of(context).colorScheme.

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".

- Kalo hot reload, dia membangun ulang widget, tapi mempertahankan state, sedangkan kalo restart, dia bener bener bangun ulang seluruh app, jadi semua state juga ulang dari awal.