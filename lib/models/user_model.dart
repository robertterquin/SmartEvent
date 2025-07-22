class UserModel {
  final String id;
  final String role;
  final String email;
  final String? name;
  final String? profilePic;
  final DateTime createdAt;
  final DateTime updatedAt;

  UserModel({
    required this.id,
    required this.role,
    required this.email,
    this.name,
    this.profilePic,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      role: json['role'],
      email: json['email'],
      name: json['name'],
      profilePic: json['profile_pic'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'role': role,
      'email': email,
      'name': name,
      'profile_pic': profilePic,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}
