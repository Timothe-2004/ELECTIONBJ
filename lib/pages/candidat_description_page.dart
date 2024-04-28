import 'package:flutter/material.dart';
import '../models/candidat_page.dart';

class CandidatDescriptionPage extends StatelessWidget {
  final Candidat candidat;

  const CandidatDescriptionPage({Key? key, required this.candidat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10.0, left: 10, right:10),
        child: ListView(
          children: [
            Text("${candidat.program}", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.teal),),
            Text("${candidat.name} ${candidat.surname}", style: TextStyle(fontWeight:FontWeight.w400 , fontSize: 24),),
            Text("Candidat", style:TextStyle(fontWeight: FontWeight.w300, color: Colors.grey[900])),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('${candidat.image}'), // Utilisez l'image du candidat ici
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            SizedBox(height: 8.0),
            Text('${candidat.description ?? ''}'),
            SizedBox(height: 16.0),

            SizedBox(height: 8.0),
            Text('${candidat.program ?? ''}', textAlign:TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}