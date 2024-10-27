class From {
  String? code;
  String? name;

  From({this.code, this.name});

  From.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    return data;
  }
}

class TicketModel {
  From? from;
  From? to;
  String? flyingTime;
  String? date;
  String? departureTime;
  int? number;

  TicketModel(
      {this.from,
      this.to,
      this.flyingTime,
      this.date,
      this.departureTime,
      this.number});

  TicketModel.fromJson(Map<String, dynamic> json) {
    from = json['from'] != null ? From.fromJson(json['from']) : null;
    to = json['to'] != null ? From.fromJson(json['to']) : null;
    flyingTime = json['flying_time'];
    date = json['date'];
    departureTime = json['departure_time'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (from != null) {
      data['from'] = from!.toJson();
    }
    if (to != null) {
      data['to'] = to!.toJson();
    }
    data['flying_time'] = flyingTime;
    data['date'] = date;
    data['departure_time'] = departureTime;
    data['number'] = number;
    return data;
  }
}
