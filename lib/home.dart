import 'package:flutter/material.dart';
import 'package:template_project/dataBuku.dart';


class ListPage extends StatelessWidget {
  final dataBuku databuku = dataBuku();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: databuku.data.length,
        itemBuilder: (context, index) {
          final buku = databuku.data[index];
          return Card(
            child: ListTile(
              title: Text(buku.judul),
              subtitle: Text(buku.pengarang),
              leading: CircleAvatar(
                backgroundImage: AssetImage(buku.gambar), // Menampilkan gambar
                radius: 30, // Ukuran avatar
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(buku.tahunTerbit),
                  SizedBox(width: 8), // Spasi antara teks dan tombol
                  ElevatedButton(
                    onPressed: () {
                      // Aksi saat tombol diklik
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Tombol untuk buku ${buku.judul} diklik!'),
                        ),
                      );
                    },
                    child: Text('Detail'), // Teks tombol
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
