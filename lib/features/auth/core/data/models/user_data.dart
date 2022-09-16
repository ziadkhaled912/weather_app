import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final String? uid;
  final String name;
  final String email;
  final String password;

  const UserData({
    this.uid,
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
    "uid" : uid,
    "name" : name,
    "email" : email,
  };

  @override
  List<Object?> get props => [name, email, password];
}