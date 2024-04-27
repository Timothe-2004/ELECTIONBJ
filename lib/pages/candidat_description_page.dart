import 'package:flutter/material.dart';
class seconde_page extends StatelessWidget {
  const seconde_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top:10.0, left: 10, right:10,),
        child: ListView(
          children: [
            Text("Politics", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.teal),),
            Text("Nouveau code electoral: un casse tête", style: TextStyle(fontWeight:FontWeight.w400 , fontSize: 24),),
            Text("30/04/2023", style:TextStyle(fontWeight: FontWeight.w300, color: Colors.grey[900])),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", textAlign:TextAlign.justify,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", textAlign:TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}