class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Hilmi Muhamad Ihsan",
      username: "Hilmi Ihsan",
      email: "hilmiihsan@email.ac.id",
      profilePhoto:
          "https://www.google.com/url?sa=i&url=http%3A%2F%2Fmas-yon.blogspot.com%2F2017%2F05%2Fpesona-wisata-garut.html&psig=AOvVaw0DQcCbcyKS6_pXkdjvYKM-&ust=1681313857581000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPDBhrSUov4CFQAAAAAdAAAAABAI",
      phoneNumber: "05322809999",
    );
  }
}
