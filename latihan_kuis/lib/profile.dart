import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final VoidCallback? onMenuTap; // Fungsi untuk pindah ke tab Menu
  const ProfilePage({super.key, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            // 1. Foto Profil / Avatar
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.orangeAccent,
              child: Icon(Icons.person, size: 60, color: Colors.orange),
            ),

            const SizedBox(height: 16),
            // 2. Nama Pembuat
            const Text(
              'Salsabila Yufli Ramadhani',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),

            const SizedBox(height: 4),
            //3. Peran
            const Text(
              'Pelanggan Resto',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            const SizedBox(height: 40),
            //4. Kartu Menu 1: Menu Resto
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.restaurant_menu, color: Colors.orange),
                ),

                title: Text(
                  'Menu Resto',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),

                subtitle: const Text(
                  'Pesan makanan favorit Anda dengan mudah.',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),

                onTap: onMenuTap,
              ),
            ),

            const SizedBox(height: 16),
            // 5. Kartu Menu 2: Pemesanan
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.receipt_long, color: Colors.orange),
                ),
                title: const Text(
                  'Pemesanan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                subtitle: const Text(
                  'Jumlah dan harga dihitung otomatis.',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      );
  }
}
