class UserLogin {

  bool? status;
  Data? data;

  UserLogin({this.status, this.data});

  UserLogin.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? phone;
  String? lastLogin;
  String? createdOn;
  String? active;
  String? type;

  Data(
      {this.id,
      this.username,
      this.email,
      this.firstName,
      this.lastName,
      this.phone,
      this.lastLogin,
      this.createdOn,
      this.active,
      this.type});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    phone = json['phone'];
    lastLogin = json['last_login'];
    createdOn = json['created_on'];
    active = json['active'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['phone'] = this.phone;
    data['last_login'] = this.lastLogin;
    data['created_on'] = this.createdOn;
    data['active'] = this.active;
    data['type'] = this.type;
    return data;
  }
}
