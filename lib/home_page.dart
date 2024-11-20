import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> books = [
    'A Guide Book To Slow Down Your Life',
    'Atomic Habits',
    'Berani Tidak Disukai',
    'Dibaca',
    'Filosofi Teras',
    'How To Think Like Sherlock Holmes',
    'Insecurity is My Middle Name',
    'Merawat Luka Batin',
  ];

  final List<String> bookImages = [
    'images/A-Guide-Book-To-Slow-Down-Your-Life.jpg',
    'images/Atomic-Habits.jpg',
    'images/Berani-Tidak-Disukai.jpg',
    'images/Dibaca.jpg',
    'images/Filosofi-Teras.jpg',
    'images/How-To-Think-Like-Sherlock-Holmes.jpg',
    'images/Insecurity-is-My-Middle-Name.jpg',
    'images/Merawat-Luka-Batin.jpg',
  ];

  final List<String> genres = [
    'Fiksi',
    'Non-Fiksi',
    'Fantasi',
    'Biografi',
    'Sejarah',
    'Sains',
    'Romantis',
    'Thriller',
  ];

  final List<String> descriptions = [
    ' "Membaca melengkapi pikiran hanya dengan bahan-bahan pengetahuan, pemikiranlah yang membuat apa yang kita baca menjadi milik kita." ― John Locke.',
    ' "Saya pilih menjadi orang miskin yang tinggal di pondok penuh buku daripada menjadi raja yang tak punya hasrat untuk membaca." ― Thomas B. Macaulay.',
    ' "The more that you read, the more things you will know. The more that you learn, the more places you`ll go." ― Dr. Seuss.',
    ' "I find television very educating. Every time somebody turns on the set, I go into the other room and read a book." ― Groucho Marx.',
    ' "Jika Anda tidak suka membaca, Anda belum menemukan buku yang tepat." ― JK. Rowling.',
  ];

   HomePage({super.key});

   final String firstRowSubtitle = 'Buku Populer';
   final String secondRowSubtitle = 'Kategori Genre Buku';
   final String thirdRowSubtitle = 'Buku Rekomendasi';
   final String fourthRowSubtitle = 'Kutipan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello! Welcome.'),
        backgroundColor: const Color.fromARGB(255, 222, 222, 123),
      ),

      body: SingleChildScrollView( 
        child: Container(
          color:  const Color.fromARGB(255, 245, 245, 208),
        
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Baris pertama menggunakan ListView horizontal
          // Judul baris pertama : "Buku Populer"
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              firstRowSubtitle,
              style: const TextStyle(
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(3, 3),
                  )
                ],
                fontSize: 20, 
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
            ),
          ),
          // Daftar Buku (Gambar & Judul)
          Container(
            margin: const EdgeInsets.all(10),
            height: 300, // Tinggi tetap untuk baris pertama
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4, // Menampilkan 4 buku di baris pertama
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                          bookImages[index],
                          fit: BoxFit.cover,
                          width: 150, // Lebar tetap untuk gambar
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: Text(
                            books[index],
                            style: const TextStyle(
                            fontSize: 14, 
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                        ),  
                      ),
                    ],
                  ),
                ),
                );
              },
            ),
          ),

          // Baris kedua : "Kategori Genre Buku"
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                secondRowSubtitle,
                style: const TextStyle(
                  shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(3, 3),
                  )
                ],
                  fontSize: 20, 
                  fontWeight: FontWeight.bold),
                textAlign: TextAlign.left, // Rata kiri
              ),
            ),
            // Baris untuk kategori genre buku
            Container(
              margin: const EdgeInsets.all(10),
              height: 30, // Tinggi tetap untuk kategori genre
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: genres.length, // Menampilkan semua genre
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Logika untuk menangani klik pada genre
                      print('Genre yang dipilih: ${genres[index]}');
                    },
                    child: Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 90, // Lebar tetap untuk setiap Card genre
                        alignment: Alignment.center,
                        child: Text(
                          genres[index],
                          style: const TextStyle(
                            fontSize: 14, 
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center, // Rata tengah
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),          

          // Baris ketiga menggunakan ListView horizontal
          // Judul baris ketiga : "Buku Rekomendasi"
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              thirdRowSubtitle,
              style: const TextStyle(
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(3, 3),
                  )
                ],
                fontSize: 20, 
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
          ),
          // Daftar buku 
          Container(
            margin: const EdgeInsets.all(10),
            height: 300, // Tinggi tetap untuk baris ketiga
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4, // Menampilkan 4 buku di baris ketiga
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                          bookImages[index + 4], // Mengambil gambar dari buku yang tersisa
                          fit: BoxFit.cover,
                          width: 150, // Lebar tetap untuk gambar
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          books[index + 4], // Mengambil judul dari buku yang tersisa
                          style: const TextStyle(
                            fontSize: 14, 
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
              },
            ),
          ),

          // Baris keempat menggunakan ListView Horizontall
          // Judul baris keempat : "Deskripsi Buku"
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              fourthRowSubtitle,
              style: const TextStyle(
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(3, 3),
                  )
                ],
                fontSize: 20,
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
            ),
          ),
          // Baris keempat menggunakan ListView horizontal untuk Deskripsi
          Container(
            margin: const EdgeInsets.all(10),
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        descriptions[index],
                        style: const TextStyle(fontSize: 14),
                        textAlign: TextAlign.left,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                      ),
                      ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      ),
      ),
      
      bottomNavigationBar: BottomNavigationBar( // Menambahkan BottomNavigationBar
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0, // Indeks item yang aktif
        selectedItemColor: Colors.blueAccent,
        onTap: (index) {
          // Tambahkan logika navigasi jika diperlukan
        },
      ),
      
    );
  }
}