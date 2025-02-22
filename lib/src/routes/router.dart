import 'package:get/get.dart';
import 'package:pendaftaran/src/pages/dashboard/index.dart';
import 'package:pendaftaran/src/pages/login/index.dart';
import 'package:pendaftaran/src/pages/awal/index.dart';
import 'package:pendaftaran/src/pages/isiformulir/index.dart';
import 'package:pendaftaran/src/pages/kwintansi/index.dart';
import 'package:pendaftaran/src/pages/metodepembayaran/index.dart';
import 'package:pendaftaran/src/pages/notifikasi/index.dart';
import 'package:pendaftaran/src/pages/pembayaran/index.dart';
import 'package:pendaftaran/src/pages/pengumuman/index.dart';
import 'package:pendaftaran/src/pages/persyaratan/index.dart';
import 'package:pendaftaran/src/pages/lembaga/index.dart';
import 'package:pendaftaran/src/pages/profil/index.dart';
import 'package:pendaftaran/src/pages/daftarpeserta/index.dart';
import 'package:pendaftaran/src/pages/daftarakun/index.dart';
import 'package:pendaftaran/src/pages/totalpembayaran/index.dart';
import 'package:pendaftaran/src/routes/constant.dart';

final List<GetPage<dynamic>>? routes = [
  GetPage(name: awalRoute, page: () => Root()),
  GetPage(name: loginRoute, page: () => LoginPage()),
  GetPage(name: isiformulirRoute, page: () => IsiFormulir()),
  GetPage(name: kwitansiRoute, page: () => Kwitansi()),
  GetPage(name: metodepembayaranRoute, page: () => MetodePembayaran()),
  GetPage(name: notifikasiRoute, page: () => Notifikasi()),
  GetPage(name: pembayaranRoute, page: () => pembayaran()),
  GetPage(name: totalpembayaranRoute, page: () => TotalPembayaran()),
  GetPage(name: pengumumanRoute, page: () => pengumuman()),
  GetPage(name: lembagaRoute, page: () => lembaga()),
  GetPage(name: persyaratanRoute, page: () => persyaratan()),
  GetPage(name: dashboardRoute, page: () => Dashboard()),
  GetPage(name: profilRoute, page: () => profil()),
  GetPage(name: daftarakunRoute, page: () => DaftarAkun()),
  GetPage(name: daftarpesertaRoute, page: () => DaftarPeserta()),
];
