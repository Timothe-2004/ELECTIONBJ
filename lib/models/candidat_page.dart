class Candidat {
  String? name;
  String? surname;
  String? description;
  String? image;
  Candidat({this.name, this.surname, this.description, this.image});

  Map<String, dynamic> toJson() {
    return {
      "nom": name,
      "surname": surname,
      "description": description,
      "image": image,
    };
  }
}
