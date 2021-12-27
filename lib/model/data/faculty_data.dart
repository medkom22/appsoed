class FacultyData {
  String name, imageUrl, address, desc;
  List<String> major;
  FacultyData(
      {required this.name,
      required this.imageUrl,
      required this.address,
      required this.desc,
      required this.major});
}

final List<FacultyData> dataFakultas = [
  FacultyData(
      name: "FAKULTAS ILMU SOSIAL DAN ILMU POLITIK (FISIP)",
      address:
          "Jl. Prof. Dr. H. R. Boenyamin 993, Purwokerto, Jawa Tengah, Indonesia, 53122",
      imageUrl: 'fisip.png',
      desc:
          "Program Studi (S1) Sosiologi dan Program Studi (S1) Ilmu Adminsitrasi Negara merupakan tonggak awal berdirinya Fakultas Ilmu Sosial dan Ilmu Politik Universitas Jenderal Soedirman. Tepatnya pada tanggal 17 Mei 1984 dengan diterbitkannya Surat Keputusan Direktur Jenderal Pendidikan Tinggi Depdikbud No. 20/DIKTI/Kep/1984 tentang Pembukaan Program Studi (S1) Sosiologi dan Program Studi (S1) Adminsitrasi Publik yang berkedudukan di bawah Administrasi Fakultas Hukum Universitas Jenderal Soedirman. Menjelang satu dasawarsa kemudian, melalui Surat Keputusan Menteri Pendidikan dan Kebudayaan RI Nomor: 0377/O/1993 tanggal 21 Oktober 1993 tentang Pendirian Fakultas Ilmu Sosial dan Ilmu Politik.",
      major: [
        'S-1 Sosiologi (A)',
        'S-1 Adminsitrasi Publik (A)',
        'S-1 Ilmu Komunikasi (A)',
        'S-1 Ilmu Politik (A)',
        'S-1 Ilmu Hubungan Internasional (A)',
        'S-2 Magister Administrasi Publik (A)',
        'S-2 Magister Sosiologi (B)',
        'S-2 Magister Ilmu Komunikasi (B)'
      ]),
  FacultyData(
      name: "FAKULTAS BIOLOGI (FABIO)",
      imageUrl: 'biologi.png',
      address: "Jl. dr. Soeparno No.63. Purwokerto 53122. ",
      major: ["NO DATA"],
      desc: "NO DATA"),
  FacultyData(
      name: "FAKULTAS EKONOMI DAN BISNIS (FEB)",
      imageUrl: 'feb.png',
      address:
          "Jl. Prof. Dr. H.R. Boenyamin No.708 Grendeng Purwokerto, Jawa Tengah, Indonesia 53122",
      desc:
          "Fakultas Ekonomi Universitas Jenderal Soedirman (Unsoed) berdiri dengan SK Menteri Perguruan Tinggi dan Ilmu Pengetahuan (PTIP) No. 127 Tahun 1963 tanggal 9 Oktober 1963. Pada waktu itu Fakultas Ekonomi Unsoed masih menempati gedung Balai Desa Purwokerto Lor dan gedung Kesenian. Jurusan yang ada barulah Ekonomi Perusahaan dan Ekonomi Pertanian dan sebagian besar tenaga pengajar dari Universitas Gajah Mada (UGM) Yogyakarta. Kemudian pada tahun 1971 Fakultas Ekonomi pindah ke Gedung di Kalibakal sampai tahun 1983. Sarjana yang pertama dihasilkan Fakultas Ekonomi pada tahun 1974 sebanyak 24 mahasiswa melalui ujian pendadaran yang dilaksanakan oleh tenaga pengajar dari UGM. Pada tahun 1975, Fakultas Ekonomi baru lepas dari binaan UGM dan menggunakan tenaga pengajar dari Universitas Jenderal Soedirman. Untuk yang ketiga kalinya pada tahun 1984 Fakultas Ekonomi pindah lagi ke gedung baru di Kampus Unsoed Grendeng Purwokerto sampai sekarang.",
      major: [
        "D-3 Bisnis Internasional (A)",
        "D-3 Akuntansi (A)",
        "D-3 Kesekretariatan (B)",
        "D-3 Administrasi Keuangan (B)",
        "S-1 Manajemen (A)",
        "S-1 Ekonomi Pembangunan (A)",
        "S-1 Akuntansi (A)",
        "S-1 Pendidikan Ekonomi (B)",
        "Profesi Akuntan (A)",
        "S-2 Manajemen (A)",
        "S-2 Ilmu Ekonomi (A)",
        "S-2 Akuntansi (A)",
        "S-3 Ilmu Manajemen (B)",
        "S-3 Ilmu Ekonomi (-)"
      ]),
  FacultyData(
      name: "FAKULTAS HUKUM (FH)",
      imageUrl: 'hukum.png',
      address: "Jl. Prof. Dr. H.R. Boenyamin No. 708 Purwokerto 53122",
      desc:
          "Pendirian Fakultas Hukum Unsoed didahului dengan pembentukan panitia berdasarkan Keputusan Rektor Universitas Jenderal Soedirman melalui Surat Kep. 022/PT30.Y/E.1979 membentuk Panitia untuk menjajagi kemungkinan berdirinya Fakultas Hukum dan mengadakan konsultasi dengan Fakultas Hukum di beberapa universitas yang sudah lebih awal lahir.  Berdasarkan hasil konsultasi tersebut, Panitia membuat rencana lengkap untuk mendirikan Fakultas Hukum. Melalui surat kawat tanggal 13 Mei 1981 dari Direktur Pembinaan Sarana Akademis atas nama Direktur Jenderal Pendidikan Tinggi Departemen P & K, Fakultas Hukum Universitas Jenderal Soedirman dapat mulai menerima mahasiswa tahun akademik 1981/1982. Selanjutnya berdasarkan Keputusan Presiden Nomor 50/1982 Fakultas Hukum secara resmi menjadi salah satu Fakultas di lingkungan Universitas Jenderal Soedirman.",
      major: [
        "S-1 Ilmu Hukum (A)",
        "S-1 Ilmu Hukum Kelas Internasional (A)",
        "S-2 Magister Hukum (A)",
        "S-2 Magister Kenotariatan (B)",
        "S-3 Studi Hukum Program Doktor (-)"
      ]),
  FacultyData(
      name: "FAKULTAS KEDOKTERAN (FK)",
      imageUrl: 'kedokteran.png',
      address: 'Dr. Gumbreg, Medical Street Purwokerto, Jawa Tengah, Indonesia',
      desc:
          "Berdasarkan Permendikbud No. 21 Tahun 2014, Fakultas Kedokteran Unsoed merupakan fakultas ketujuh dari dua belas fakultas yang saat ini dimiliki oleh Unsoed. Fakultas Kedokteran memiliki dua jurusan, yakni Kedokteran Umum dan Kedokteran Gigi.  FK Unsoed juga mengasuh dua program profesi, yakni profesi dokter dan profesi dokter gigi. Fakultas Kedokteran Unsoed memiliki fasilitas yang representatif.",
      major: [
        "S-1 Kedokteran (A)",
        "Profesi Dokter (A)",
        "S-1 Kedokteran Gigi (B)",
        "Profesi Dokter Gigi (B)",
        "S-2 Magister Biomedis (B)"
      ]),
  FacultyData(
      name: "FAKULTAS PERIKANAN DAN ILMU KELAUTAN (FPIK)",
      imageUrl: 'fpik.png',
      address:
          'Jl. Dr. Soparno, Komplek GOR Soesilo Soedarman Karangwangkal Purwokerto 53122',
      desc:
          "Fakultas Perikanan dan Ilmu Kelautan Universitas Jenderal Soedirman (FPIK-Unsoed) didirikan berdasarkan Keputusan Mendiknas dan SK Rektor UNSOED pada tahun 2014 Nomor 1600/UN23/OT.01/2014 tanggal 24 Oktober 2014 tentang Penetapan Fakultas-Fakultas Baru Universitas Jenderal Soedirman.FPIK-UNSOED memiliki tiga Program Studiyakni :Manajemen Sumberdaya Perairan, Budidaya Perairan, dan Ilmu Kelautan. Sejarah singkat Program Sarjana Perikanan dan Kelautan dan Jurusan Perikanan dan Kelautan (JPK) dibawah Fakultas Sains dan Teknik (FST) yang merupakan embrio dari FPIK-Unsoed.   ",
      major: [
        "S-1 Budidaya Perairan (A)",
        "S-1 Ilmu Kelautan (A)",
        "S-1 Manajemen Sumber Daya Perairan (A)",
        "S-2 Industri Sumber Daya Hayati Kelautan (-)",
        "S-2 Sumber Daya Akuatik (-)"
      ]),
  FacultyData(
      name: "FAKULTAS ILMU BUDAYA (FIB)",
      imageUrl: 'fib.png',
      address: 'Jl. Dr. Suparno Kampus Karangwangkal - Purwokerto 53123',
      desc:
          'Fakultas Ilmu Budaya berawal dari pendirian Jurusan Ilmu Budaya di bawah Fakultas Ilmu Sosial dan Ilmu Politik Universitas Jenderal Soedirman. Jurusan Ilmu Budaya telah dirintis keberadaannya sejak dibentuknya Laboratorium Bahasa pada tahun 1990. Laboratorium Bahasa yang kemudian berubah nama menjadi Pusat Bahasa atau English Language Center (ELC) pada tahun 1992 ditunjuk oleh pimpinan universitas untuk mempersiapkan penyelenggaraan Program Studi D3 Bahasa Inggris. Instruksi tersebut kemudian ditindaklanjuti dengan dibentuknya panitia pendirian program D3 Bahasa Inggris berdasarkan SK Rektor No Kept.179/PT 30.H/I/1995, dan hal itu menjadi awal terbentuknya Program Studi D3 Bahasa Inggris yang mulai dibuka tahun 1997.',
      major: [
        'S-1 Sastra Inggris (A)',
        'S-1 Sastra Indonesia (A)',
        'S-1 Sastra Jepang (A)',
        'S-1 Pendidikan Bahasa Indonesia (B)',
        'S-1 Pendidikan Bahasa dan Sastra Inggris (B)',
        'D-3 Bahasa Inggris (B)',
        'D-3 Bahasa Mandarin (B)'
      ]),
  FacultyData(
      name: "FAKULTAS ILMU-ILMU KESEHATAN (FIKES)",
      imageUrl: 'fikes.png',
      address:
          'Jl. dr. Soeparno Kampus Karangwangkal Purwokerto Utara 53123 Banyumas, Jawa Tengah, Indonesia',
      desc:
          "FIKes merupakan salah satu fakultas yang ada di Universitas Jenderal Soedirman. Tujuan diberdirikanya fakultas ini adalah untuk menjadi fakultas yang unggul dalam ilmu pengetahuan, teknologi dan atau seni (IPTEKS) di bidang kesehatan yang relevan dengan pengembangan sumberdaya perdesaan yang berkelanjutan, berlandaskan pada sumberdaya dan kearifan lokal pada tahun 2034.",
      major: [
        'S-1 Farmasi (B)',
        'S-1 Kesehatan Masyarakat (Akreditasi Unggul)',
        'S-1 Keperawatan (A)',
        'S-1 Ilmu Gizi (A)',
        'S-1 Internasional Keperawatan (A)',
        'Profesi Pendidikan Profesi Ners (A)',
        'Profesi Pendidikan Profesi Apoteker (B)'
      ]),
  FacultyData(
    name: "FAKULTAS MATEMATIKA DAN ILMU PENGETAHUAN ALAM (FMIPA)",
    imageUrl: 'mipa.png',
    address:
        'Jl. Dr. Soeparno No. 61 Purwokerto - Banyumas Jawa Tengah (53123)',
    desc:
        "Fakultas Matematika dan Ilmu Pengetahuan Alam (FMIPA) Unsoed adalah salah satu dari enam fakultas baru yang didirikan berdasarkan Permendikbud No. 21 Tahun 2014 tentang Organisasi dan Tata Kerja Unsoed.",
    major: [
      "S-1 Kimia (A)",
      "S-1 Matematika (A)",
      "S-1 Fisika (B)",
    ],
  ),
  FacultyData(
      name: "FAKULTAS PETERNAKAN (FAPET)",
      imageUrl: 'peternakan.png',
      address: 'Jl. Dr. Soeparno Karangwangkal - Purwokerto 53122',
      desc:
          "Berdasarkan Surat Keputusan Menteri Perguruan Tinggi dan Ilmu Pengetahuan Nomor 275 tanggal 3 Desember 1965 tentang pembukaan (pendirian) Fakultas Peternakan Universitas Negeri Jenderal Soedirman, maka di Purwokerto pada tanggal 10 Februari 1966 dilakukan serah terima Fakultas Kedokteran Hewan dan Peternakan Universitas Islam Indonesia (FKHP-UII) Yogyakarta Cabang Purwokerto kepada Universitas Negeri Jenderal Soedirman Purwokerto, yang masing-masing diwakili oleh Drs. Djarwoto Aminoto (Kuasa Dekan II FKHP-UII) dan Drh. R. Djanuar Pjs. Dekan Fakultas Peternakan Unsoed Purwokerto. Dengan demikian secara resmi tanggal 10 Februari 1966 dianggap atau dinyatakan sebagai hari kelahiran Fakultas Peternakan Universitas Negeri Jenderal Soedirman Purwokerto.",
      major: [
        'S-1 Peternakan (A)',
        'S-2 Ilmu Peternakan (A)',
        'S-3 Peternakan (B)',
        'D-3 Budi Daya Ternak (A)',
      ]),
  FacultyData(
    name: "FAKULTAS PERTANIAN (FAPERTA)",
    imageUrl: 'pertanian.png',
    address:
        'Jl. Dr. Soeparno No. 61 Purwokerto - Banyumas Jawa Tengah (53123)',
    desc:
        "Fakultas Pertanian Universitas Jenderal Soedirman (Unsoed) merupakan salah satu lembaga pendidikan tinggi negeri yang terletak di Purwokerto, Provinsi Jawa Tengah. Lembaga pendidikan tinggi di ibu kota Kabupaten Banyumas merupakan fakultas tertua dan terbanyak memiliki program studi. Pada saat ini terdapat 4 jurusan dengan 8 program studi S-1, 3 program D-3, 2 program alih jenjang dan 1 program S-2.",
    major: [
      'S-1 Agroteknologi (A)',
      'S-1 Agribisnis (A)',
      'S-1 Teknologi Pangan (A)',
      'S-1 Teknik Pertanian (A)',
      'D-3 Agribisnis (B)',
      'D-3 Perencanaan Sumber Daya Lahan (B)',
      'S-2 Argonomi (B)',
      'S-2 Agribisnis (B)',
      'S-2 Ilmu Pangan (B)',
      'S-3 Ilmu Pertanian (B)',
    ],
  ),
  FacultyData(
    name: "FAKULTAS TEKNIK (FT)",
    imageUrl: 'teknik.png',
    address: 'Jl. Mayjen Sungkono KM 05 Blater, Kalimanah, Purbalingga 53371',
    desc:
        'Fakultas Teknik (FT) merupakan fakultas yang paling jauh di antara fakultas-fakultas lain di Unsoed. FT didirikan dengan tujuan menjadi fakultas yang unggul di tingkat internasional dalam pengembangan keteknikan dan teknologi berbasis sumber daya dan kearifan lokal.',
    major: [
      'S-1 Teknik Elektro (B)',
      'S-1 Teknik Sipil (A)',
      'S-1 Informatika (B)',
      'S-1 Teknik Geologi (B)',
      'S-1 Teknik Industri (C)',
    ],
  )
];
