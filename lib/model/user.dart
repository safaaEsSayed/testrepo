class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final bool isDarkMode;
  final String age;
  final String phoneNumber;
  final String title;
  final bool value;

  User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode,
    required this.age,
    required this.phoneNumber,
    required this.title,
    required this.value,
  });

  User copy({
    String? imagePath,
    String? name,
    String? email,
    String? about,
    bool? isDarkMode,
    String? age,
    String? phoneNumber,
    String? title,
    bool? value,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        email: email ?? this.email,
        about: about ?? this.about,
        isDarkMode: isDarkMode ?? this.isDarkMode,
        age: age ?? this.age,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        title: title ?? this.title,
        value: value ?? this.value,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        email: json['email'],
        about: json['about'],
        isDarkMode: json['isDarkMode'],
        age: json['age'],
     phoneNumber: json['phoneNumber'],
    title: json['title'],
    value: json['value'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'email': email,
        'about': about,
        'isDarkMode': isDarkMode,
        'age': age,
        'phoneNumber': phoneNumber,
        'title': title,
        'value': value,
      };
}
