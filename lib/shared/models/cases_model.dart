class CaseModel {
  String id;
  String title;
  String ong;
  String description;
  String price;
  String whatsapp;

  CaseModel({
    this.id,
    this.title,
    this.ong,
    this.description,
    this.price,
    this.whatsapp,
  });

  CaseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    ong = json['ong'];
    description = json['description'];
    price = json['price'];
    whatsapp = json['whatsapp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['ong'] = this.ong;
    data['description'] = this.description;
    data['price'] = this.price;
    data['whatsapp'] = this.whatsapp;
    return data;
  }
}
