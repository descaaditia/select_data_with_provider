class InfoModel {
  String alamat;
  String wa;
  InfoModel({this.alamat, this.wa});

  InfoModel.fromJson(Map<String, dynamic> json) {
    alamat = json['alamat'];
    wa = json['wa'];
  }
}

class PengalamanModel {
  String kantor;
  int lamapengalaman;
  String profesi;

  PengalamanModel({this.kantor, this.lamapengalaman, this.profesi});
  PengalamanModel.fromJson(Map<String, dynamic> json) {
    kantor = json['kantor'];
    lamapengalaman = json['lama_pengalaman'];
    profesi = json['profesi'];
  }
}

class AllDataModel {
  String nama;
  int umur;
  InfoModel info;
  List<PengalamanModel> pengalaman;

  AllDataModel({this.nama, this.umur, this.info, this.pengalaman});
  AllDataModel.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    umur = json['umur'];
    info = InfoModel.fromJson(json['info']);
    pengalaman = List<PengalamanModel>.from(json['pengalaman'].map((val) {
      return PengalamanModel.fromJson(val);
    }));
  }
}
