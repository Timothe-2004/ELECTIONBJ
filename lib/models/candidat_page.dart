class Candidat {
  String? name;
  String? surname;
  String? description;
  String? image;
  String? program;
  String ? birthday;
  Candidat({this.name, this.surname, this.description, this.image,this.program,this.birthday});

  Map<String, dynamic> toJson() {
    return {
      "nom": name,
      "surname": surname,
      "description": description,
      "image": image,
    };
  }
}
