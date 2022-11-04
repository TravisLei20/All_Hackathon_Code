class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  int? rating;
  List<String>? preferences;

  UserModel(
      {this.uid,
      this.email,
      this.firstName,
      this.secondName,
      this.rating,
      this.preferences});

  // Get data from server
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        firstName: map['firstName'],
        secondName: map['secondName'],
        rating: map['rating'],
        preferences: map['preferences']);
  }

  // Send data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'rating': rating,
      'preferences': preferences
    };
  }
}
