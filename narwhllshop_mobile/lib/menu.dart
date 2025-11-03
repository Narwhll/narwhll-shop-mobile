import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String nama = "Davin Fauzan Akmalianto";
  final String npm = "2406409504";
  final String kelas = "E";

  final List<ItemHomePage> items = [
    ItemHomePage("All Products", Icons.newspaper),
    ItemHomePage("My Products", Icons.add),
    ItemHomePage("Create Product", Icons.logout),
  ];


  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar macam navbar (i think)
        appBar: AppBar(
          title: const Text('NarwhllShop', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
          // Warna latar navbar diambil dari color scheme primary aplikasi
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        // Body halaman dengan padding
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoCard(title: 'NPM', content: npm),
                    InfoCard(title: 'Name', content: nama),
                    InfoCard(title: 'Class', content: kelas),
                  ],
                ),
                // Memberikan jarak vertikal 16 unit.
                const SizedBox(height: 16.0),

                // di tengah halaman
                Center(
                    child: Column(
                      // Menyusun secara vertikal
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Text(
                            "Welcome to NarwhllShop, a place for all your sports needs.",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,),
                          ),
                        ),
                        // GRid buat nampilin ItemCard dalam bentuk grid 3 kolom.
                        GridView.count(
                          primary: true,
                          padding: const EdgeInsets.all(20),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                          // shrinkWrap biar grid nyesuain tinggi konten
                          shrinkWrap: true,
                          children: items.map((ItemHomePage item) {
                            return ItemCard(item);
                          }).toList(),
                        ),
                      ],
                    )
                ),
              ],
            )
        )
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2.0,
        child: Container(
            width: MediaQuery.of(context).size.width / 3.5,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(content),
              ],
            )
        )
    );
  }
}

class ItemHomePage {
  final String name;
  final IconData icon;

  ItemHomePage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomePage item;
  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).colorScheme.secondary,

        borderRadius: BorderRadius.circular(12),
        child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                    SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
                );
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(item.icon, color: Colors.white, size: 30.0),
                        const Padding(padding: EdgeInsets.all(3)),
                        Text(
                          item.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    )
                )
            )
        )
    );
  }
}

