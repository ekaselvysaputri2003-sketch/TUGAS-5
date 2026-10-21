
import 'package:flutter/material.dart';

void main() {
  runApp(const KartuUjianApp());
}

const hijau = Color(0xFF087F5B);
const hijauMuda = Color(0xFFE0F2EA);

class KartuUjianApp extends StatelessWidget {
  const KartuUjianApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kartu Ujian Mahasiswa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: hijau),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF3F6F5),
      ),
      home: const HalamanKartuUjian(),
    );
  }
}

class HalamanKartuUjian extends StatelessWidget {
  const HalamanKartuUjian({super.key});

 

Widget jadwal(
  String nama,
  String tanggal,
  String jam,
  String ruang,
  IconData ikon,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 21,
          backgroundColor: hijauMuda,
          child: Icon(ikon, color: hijau, size: 23),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                '$tanggal • $jam',
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.black54,
                ),
              ),
              Text(
                'Ruang: $ruang',
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 46,
        backgroundColor: hijau,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Kartu Ujian Mahasiswa',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),

      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
              child: Column(
                children: [
                  // Kartu identitas ringkas
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: hijau, width: 1.2),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.school, color: hijau, size: 25),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'KARTU UJIAN AKHIR SEMESTER',
                                style: TextStyle(
                                  color: hijau,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(height: 18),

                        const CircleAvatar(
                          radius: 29,
                          backgroundColor: hijauMuda,
                          child: Icon(
                            Icons.person,
                            size: 36,
                            color: hijau,
                          ),
                        ),
                        const SizedBox(height: 5),

                        const Text(
                          'Eka Selvy Saputri',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'NPM: 2410020045',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 10),

                        const Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'PROGRAM STUDI',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Text(
                                    'Sistem Informasi',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'SEMESTER',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Text(
                                    '5 (Lima)',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 9),

                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                            color: hijauMuda,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'TAHUN AKADEMIK 2026/2027',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: hijau,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Jadwal ujian dibuat lebih rapat
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'JADWAL UJIAN',
                          style: TextStyle(
                            color: hijau,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(height: 8),

                        jadwal(
                          'Pemrograman Web',
                          '22 Okt 2026',
                          '08.00-10.00',
                          '4',
                          Icons.computer,
                        ),
                        const Divider(height: 4),

                        jadwal(
                          'Basis Data',
                          '23 Okt 2026',
                          '10.00-12.00',
                          '5',
                          Icons.storage,
                        ),
                        const Divider(height: 4),

                        jadwal(
                          'Analisis Sistem Informasi',
                          '24 Okt 2026',
                          '08.00-10.00',
                          '6',
                          Icons.analytics,
                        ),
                        const Divider(height: 4),

                        jadwal(
                          'Pemrograman Mobile',
                          '25 Okt 2026',
                          '13.00-15.00',
                          '7',
                          Icons.code,
                        ),
                      ],
                    ),
                  ),

                  TextButton.icon(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Syarat Mengikuti Ujian'),
                          content: const Text(
                            '1. Membawa kartu ujian.\n'
                            '2. Membawa kartu identitas mahasiswa.\n'
                            '3. Hadir 15 menit sebelum ujian.\n'
                            '4. Mematuhi tata tertib ujian.',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Tutup'),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: const Icon(Icons.info_outline, size: 17),
                    label: const Text(
                      'Lihat Syarat',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),

      // Tombol selalu terlihat di bawah layar
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 8),
          child: SizedBox(
            height: 43,
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Kartu ujian berhasil disiapkan!'),
                  ),
                );
              },
              icon: const Icon(Icons.print, size: 19),
              label: const Text('Cetak Kartu'),
              style: ElevatedButton.styleFrom(
                backgroundColor: hijau,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
