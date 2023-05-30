class User {
  String name;
  String email;
  String avatar;

  User({required this.name,required this.email,required this.avatar});

  User.fromJson(Map<String, dynamic> Json)
      : name = Json['name'],
        email = Json['email'],
        avatar = Json['avatar'];
}
