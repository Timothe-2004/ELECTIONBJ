import 'package:devoir/pages/candidat_form_page.dart';
import 'package:flutter/material.dart';
import '../models/candidat_page.dart';

class CandidatList extends StatefulWidget {

  CandidatList({super.key});

  @override
  State<CandidatList> createState() => _CandidatListState();
}

class _CandidatListState extends State<CandidatList> {
  List<Candidat> candidats = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Elections 🇧🇯🇧🇯',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView(

          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: [Text("${candidats.length}")],
                  )
                ],
              ),
            ),

            Column(
                children: candidats.map((value) => Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(top: 7, bottom: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: NetworkImage('${value.image}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${value.name}  ${value.surname}", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                              Text("${value.description}",
                              maxLines: 3,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )).toList()
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
          onPressed: () async {
            Candidat candidat = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CandidatInscription(),
                ));
            setState(() => candidats.add(candidat));
          },
          child: Icon(Icons.add, color: Colors.black,),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.green.shade50,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.green),
                label: 'Accueil',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.how_to_vote),
                label: 'Vote',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ]
        ));}

}
