import 'package:flutter/material.dart';
import 'package:template_project/dataBuku.dart';



class listPage extends StatelessWidget {
  final dataBuku databuku = dataBuku();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          
          title: Text(
            'Daftar Buku',
          ),
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
                leading: CircleAvatar(),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    
                  ],
                )
              ),
            );
          },
        ),
      ),
    );
  }
}
