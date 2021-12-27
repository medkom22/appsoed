import 'package:appsoed/page/chat_page.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        elevation: 0,
        title: Text(
          "FAQ",
          style: textAppbarFAQ,
        ),
      ),
      body: Accordion(
        headerBackgroundColor: Colors.amber,
        maxOpenSections: 1,
        leftIcon: const Icon(Icons.chevron_right, color: Colors.white),
        children: [
          AccordionSection(
            isOpen: true,
            header: Text(
              'KKN',
              style: textAccordian,
            ),
            content: const Text(
                "Halo temen-temen! Kali ini Batir akan memberikan informasi seputar pertanyaan yang sering ditanyakan terkait KKN periode Juli-Agustus 2021.\n\nQ: Apa tema KKN yang sekarang?\n\nA:  Tema KKN sekarang yaitu KKN Mandiri. Mahasiswa KKN secara individu dan membuat laporan juga secara individu, jadi tidak perlu membuat kelompokpun tidak apa-apa.\n\nQ: Apakah ada ketentuan untuk pembentukan kelompok KKN\n\nA:  Sebetulnya tidak perlu membentuk kelompok KKN di periode ini. Namun jumlah orang di setiap desa disesuaikan dengan informasi yang ada web LPPM, yaitu maksimal 10 mahasiswa dalam satu desa. Jadi, 10 itu bukan untuk dijadikan patokan harus 10 mahasiswa. Jika satu desa itu hanya 1 mahasiswa atau 2 mahasiswa saja juga diperbolehkan.\n\nQ: Apakah terdapat pembatasan jumlah mahasiswa yang fakultasnya sama maksimal 2 orang\n\nA: Terkait pernyataan itu merupakan kebijakan KKN tahun lalu yang masih dalam bentuk KKN biasa. Sementara KKN saat ini merupakan KKN mandiri karena sedang dalam kondisi pandemi covid-19. Apabila kebetulan ada teman yang satu fakultas di desa yang sama, tidak apa-apa selama tetap mematuhi protokol kesehatan dan jumlahnya maksimal 10 orang dalam 1 desa.\n\nQ: kapan pelaksanaan pembekalan dan sosialisasi KKN\n\nA: Terkait pembekalan, sosialisasi, dll masih menunggu informasi dari web resmi. Ditunggu ya, Gensoed!\n\nQ: Bagaimana maksud dari poin 1 dan 2 dalam surat pernyataan KKN\n\nA: Terkait poin 1 dan 2 dikolom pernyataan, yang pertama yaitu “Mahasiswa bersedia ditempatkan dilokasi KKN yang telah ditetapkan pemkab, untuk kata “ditetapkan” nanti akan diperbaiki dan untuk poin kedua yaitu “Saya bersedia menaati tata tertib KKN dan menghormati adat istiadat masyarakat setempat, perlu diperhatikan. Dari kalimat tersebut kita harus bisa mengutamakan sopan santun kita, karena kita sedang berada di lingkungan yang bukan tempat kita.\n\nQ: Bagaimana format surat ijin lokasi KKN dan surat ijin orang tua\n\nA: Surat ijin lokasi KKN dapat diakses di http://bit.ly/ljinlokasikkn21 .Terkait dengan surat ijin orang tua, tidak ada formatnya bebas yang terpenting surat tersebut wajib ditanda tangani oleh orang tua/wali mahasiswa.\n\nQ: Bagaimana mekanisme pengumpulan berkas persyaratan KKN\n\nA: Untuk berkas persyaratan KKN: Form Pendaftaran, Surat Ijin Lokasi, Surat Pernyataan dan Surat ljin Orang Tua dijadikan 1 File max 10 Mb di upload di link: http://bit.ly/Unggah_Berkas_KKN_Juli_Agustus_2021. Dengan Format Penamaan file: Fakultas_NIM_Nama Batas Akhir Unggah Tanggal 10 Juni Pukul 24.00 WIB\n\nQ: Apa yang dimaksud dengan alamat domisi?\n\nA: Alamat domisi merupakan alamat yang ditempati oleh mahasiswa saat ini. Misalnya, mahasiswa A alamat aslinya di Jakarta, tetapi saat ini hingga KKN nanti ia berada di Purwokerto, maka alamat yang dicantumkan wajib alamat lengkap di Purwokerto. Karena alamat domisili ini berhubungan dengan pendistribusian topi dan fasilitas KKN yang lain.\n\nQ: Bagaimana jika ada mahasiswa yang ingin mengundurkan diri? Dan mahasiswa tersebut berada di luar Purwokerto?\n\nA: mahasiswa tersebut wajib datang langsung ke LPPM untuk menyerahkan surat pengunduran diri.\nSobat gensoed dimohon berhati-hati dalam melakukan pendaftaran yaa, Apabilaterjadi jeda waktu terlalu lama saat pendaftaran maka sistem akan menutup otomatis dan dianggap sudah selesai melakukan pendaftaran serta tidak dapat dibuka kembali\nSUMBER : LPPM UNSOED"),
          ),
          AccordionSection(
              isOpen: true,
              header: Text(
                'Pembayaran UKT',
                style: textAccordian,
              ),
              content: const Text(
                "Q : Kak kapan pembayaran UKT semester gasal 2021/2022 akan dilaksanakan?\nA : Untuk pembayaran UKT akan dilaksanakan pada tanggal 1 Juli – 31 Juli 2021.\n\nQ : Tata cara pembayaran UKT bagaimana ka?\nA :  Untuk tata caranya sudah pernah kami posting, silahkan cek timeline kami ya atau bisa akses ke link bit.ly/CaraBayarUKTku atau sista.unsoed.ac.id\n\nQ : Untuk kode pembayaran NIM dikonversi atau gimana kak?\nA : iya dikonversi dari huruf ke angka ya, misal, A=01; B=02; C=03 dst. Contoh : E1A017068 menjadi 05101017068.\n\nQ : Kok bayar melalui ATM, I-bank, M-bank tidak bisa ya kak, kode penyedia jasa error atau kadaluwarsa?\nA : Bisa dicoba diganti ke bank lain atau mendatangi teller bank mitra unsoed.\n\nQ : Untuk penyesuaian UKT pengumuman kapan?\nA : Pengumuman penyesuaian UKT belum dapat dipastikan, karena semua dilakukan sesuai prosedural oleh birokrasi jadi harap bersabar dan ditunggu saja ya kak.\n\nQ : Pada saat penyesuaian UKT semester kemarin mendapat penurunan UKT tetapi di sista sekarang kok UKT nya tetep seperti biasa?\nA : Cetak SK penyesuaian UKT pastikan ada nama kamu, Screenshoot tagihan di sista, lalu serahkan ke bagian keuangan di Pusat Administrasi lt 2, biasanya nanti disana akan diarahkan\n\nQ : Untuk penyesuaian UKT, pembayaran UKT nunggu pengumuman dulu atau gimana?\nA : Bisa ditunggu dulu pengumuman, jika sampai seminggu atau mendekati akhir-akhir penutupan pembayaran UKT belum ada pengumuman, kamu bisa bayar dulu UKTnya sesuai UKT yang di sista\n\nQ : Udah terlanjur bayar tapi dapat penurunan pada saat melakukan penyesuaian UKT itu gimana?\nA : Tenang, bisa direfund kok, Fotocopy buku tabungan kamu, lampirkan bukti pembayaran UKT Terbaru dan SK Penyesuaian UKT, bawa ke bagian keuangan Pusat Administrasi lt 2 nanti akan diarahkan",
              )),
          AccordionSection(
            isOpen: true,
            header: Text(
              'Perhitungan UKT',
              style: textAccordian,
            ),
            content: Column(
              children: [
                const Text(
                    "HITUNG UKT YUK!.\nHai Gensoed 2021! Apa kabar nih? Semoga sehat lalu ya dan tetap #dirumahaja untuk memutus penyebaran Covid-19 ini.\n\nNah kali ini Batir Unsoed buat video soal UKT dan uang pangkal lohh, buat yang masih bingung atau ada yang kurang jelas waktu baca modul bisa nih kalian dengerin penjelasan dari teman-teman dirjen biaya pendidikan!\n\nApa aja sih yang dibahas??\n– Istilah penting yang perlu mahasiswa tau\n– Pengelompokan kriteria UKT (termasuk golongan UKT mahasiswa)\n– Cara menghitung UKT\n– Uang pangkal dan golongan-golongannya\nModul UKT 2021 Dapat dilihat di tombol bawah ini"),
                TextButton(
                    onPressed: () {
                      ChatPage.urlLauncer(
                          "https://drive.google.com/drive/u/3/my-drive");
                    },
                    child: const Text("Di sini"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
