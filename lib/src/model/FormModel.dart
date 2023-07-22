import 'dart:convert';

FormModel formModelFromJson(String str) =>
  FormModel.fromJson(json.decode(str));

String formModelToJson(FormModel data) => 
    json.encode(data.toJson());

class FormModel {
  int? code;
  String? message;
  Data? data;

  FormModel({this.code, this.message, this.data});

  FormModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? namaLengkap;
  String? nisn;
  String? jenisKelamin;
  String? ttl;
  String? alamat;
  String? asalSekolah;
  String? tahunLulus;
  String? namaWali;
  String? nik;
  String? pekerjaanWali;
  String? alamatWali;
  String? nomorWa;
  String? pilihanSekolah;
  String? ijazah;
  String? userId;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data(
      {this.namaLengkap,
      this.nisn,
      this.jenisKelamin,
      this.ttl,
      this.alamat,
      this.asalSekolah,
      this.tahunLulus,
      this.namaWali,
      this.nik,
      this.pekerjaanWali,
      this.alamatWali,
      this.nomorWa,
      this.pilihanSekolah,
      this.ijazah,
      this.userId,
      this.updatedAt,
      this.createdAt,
      this.id});

  Data.fromJson(Map<String, dynamic> json) {
    namaLengkap = json['nama_lengkap'];
    nisn = json['nisn'];
    jenisKelamin = json['jenis_kelamin'];
    ttl = json['ttl'];
    alamat = json['alamat'];
    asalSekolah = json['asal_sekolah'];
    tahunLulus = json['tahun_lulus'];
    namaWali = json['nama_wali'];
    nik = json['nik'];
    pekerjaanWali = json['pekerjaan_wali'];
    alamatWali = json['alamat_wali'];
    nomorWa = json['nomor_wa'];
    pilihanSekolah = json['pilihan_sekolah'];
    ijazah = json['ijazah'];
    userId = json['user_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama_lengkap'] = this.namaLengkap;
    data['nisn'] = this.nisn;
    data['jenis_kelamin'] = this.jenisKelamin;
    data['ttl'] = this.ttl;
    data['alamat'] = this.alamat;
    data['asal_sekolah'] = this.asalSekolah;
    data['tahun_lulus'] = this.tahunLulus;
    data['nama_wali'] = this.namaWali;
    data['nik'] = this.nik;
    data['pekerjaan_wali'] = this.pekerjaanWali;
    data['alamat_wali'] = this.alamatWali;
    data['nomor_wa'] = this.nomorWa;
    data['pilihan_sekolah'] = this.pilihanSekolah;
    data['ijazah'] = this.ijazah;
    data['user_id'] = this.userId;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
