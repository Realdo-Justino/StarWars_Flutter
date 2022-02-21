import 'package:flutter/material.dart';
import 'package:starwars/Services/list_results_chacarters.dart';
import 'package:starwars/Pages/page_model.dart';
import 'package:starwars/Services/list_all_results_characters.dart';

class Itens_List extends StatefulWidget {
  const Itens_List({ Key? key }) : super(key: key);

  @override
  State<Itens_List> createState() => _Itens_ListState();
}

class _Itens_ListState extends State<Itens_List> {
  String nome="Loading";
  String gender="Loading";
  String birth="Loading";
  String height="Loading";
  int i=0;

  void Setup_characters(int i)async{
    Resultados instance=Resultados('people/$i/');
    await instance.getResultados();
    setState(() {
      nome=instance.name;
      gender=instance.gender;
      birth=instance.birth;
      height=instance.height;
    });
  }
  
  @override
  void initState() {
    super.initState();
    i=contador();
    Setup_characters(i);
    build(context);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Container(
                    padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 5),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      color: Colors.grey[200],
                      child: Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment(-0.8, 0.0),
                            child:Icon(
                              Icons.account_circle_outlined,
                              size: 50,
                            ),
                          ),
                          Container(
                            width: 200,
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                  child: Text('Nome: $nome'),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                  child: Text('Genero: $gender'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                  child: Text('Data Nas: $birth'),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                  child: Text('Altura: $height'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
    );
  }
}