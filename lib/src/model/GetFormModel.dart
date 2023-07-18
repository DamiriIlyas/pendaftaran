import 'dart:convert';

GetFormModel getformModelFromJson(String str) =>
  GetFormModel.fromJson(json.decode(str));

String getformModelToJson(GetFormModel data) => 
    json.encode(data.toJson());

class GetFormModel {
  int? code;
  String? message;
  List<GetData>? data;

  GetFormModel({this.code, this.message, this.data});

  GetFormModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <GetData>[];
      json['data'].forEach((v) {
        data!.add(new GetData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GetData {
  int? id;
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
  String? skhu;
  String? foto;
  String? userId;
  String? createdAt;
  String? updatedAt;
  Users? users;

  GetData(
      {this.id,
      this.namaLengkap,
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
      this.skhu,
      this.foto,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.users});

  GetData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
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
    skhu = json['skhu'];
    foto = json['foto'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    users = json['users'] != null ? new Users.fromJson(json['users']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
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
    data['skhu'] = this.skhu;
    data['foto'] = this.foto;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.users != null) {
      data['users'] = this.users!.toJson();
    }
    return data;
  }
}

class Users {
  int? id;
  String? name;
  String? email;
  Null? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  Users(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
