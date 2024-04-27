
import 'package:devoir/common/input.dart';
import 'package:devoir/models/candidat_page.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import '../common/button.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class CandidatInscription extends StatefulWidget {
  const CandidatInscription({super.key});

  @override
  State<CandidatInscription> createState() => _CandidatInscriptionState();
}

class _CandidatInscriptionState extends State<CandidatInscription> {
  DateTime? birthdate;
  final _formKey = GlobalKey<FormState>();
  final Candidat candidat= Candidat();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Creation de canidat", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),

      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              MyWidget(


              ),
              Inputwidget(
                name: 'Nom',
                contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                validator: (value) {
                  if (value!.isEmpty) {
                    return " Champ obligatoire";
                  }
                },
                onSaved: (value) {

                  // print("Valeur à sauvegarder $value");
                  candidat.name=value;

                },

                prefixIcon: Icon(Icons.person),
              ),
              SizedBox(height: 20,),
              Inputwidget(
                name: 'Prenom',
                contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                validator: (value) {
                  if (value!.isEmpty) {
                    return " Champ obligatoire";
                  }
                },
                onSaved: (value) {

                  // print("Valeur à sauvegarder $value");
                  candidat.surname=value;

                },

                prefixIcon: Icon(Icons.person),
              ),
              SizedBox(height: 20,),
              Inputwidget(
                name: 'Parti politique',
                contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                validator: (value) {
                  if (value!.isEmpty) {
                    return " Champ obligatoire";
                  }
                },
                onSaved: (value) {
                  candidat.description=value;

                },

                prefixIcon: Icon(Icons.flag),
              ),
              SizedBox(height: 20,),
              Inputwidget(
                name: 'Description',
                contentPadding: EdgeInsets.symmetric(vertical: 30.0),
                validator: (value) {
                  if (value!.isEmpty) {
                    return " Champ obligatoire";
                  }
                },
                onSaved: (value) {
                  candidat.description=value;

                },

                prefixIcon: Icon(Icons.description),
              ),
              SizedBox(height: 20,),





              SizedBox(height: 10,),
              ListTile(
                title: Text("Date de naissance"),
                subtitle: Text("$birthdate"),
                trailing: Icon(Icons.calendar_month),
                onTap: () async {
                  birthdate = await showDatePicker(
                      cancelText: "Annuler",
                      confirmText: "Confirmer",
                      barrierColor: Colors.green.shade50,
                      context: context,
                      firstDate: DateTime(1990),
                      lastDate: DateTime.now());
                  setState(() {});
                },
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(

          child:  Button(
            onPressed: ()  {

              if(_formKey.currentState!.validate()){

                _formKey.currentState!.save();
                _formKey.currentState!.save();
                Navigator.pop(context, candidat);



              };

            },

            text: "S'inscrire",
          )
      ),
    );
  }
}
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _pickImage(ImageSource.gallery);
          },
          child: Text('Sélectionner une image'),
        ),
        if (_imageFile != null) ...[
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: FileImage(_imageFile!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ],
    );
  }
}
