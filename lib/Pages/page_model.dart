import 'dart:js';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:category_picker/category_picker.dart';
import 'package:category_picker/category_picker_item.dart';
import '/Classes/list_itens.dart';

class page_model_class extends StatefulWidget {
  const page_model_class({ Key? key }) : super(key: key);

  @override
  State<page_model_class> createState() => _page_model_classState();
}
int i=0;
int contador(){
  i++;
  return i;
}
void list(){
  for(i=0;i<83;i++){
    Itens_List();
  }
}

class _page_model_classState extends State<page_model_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                'StarWars App',
                style: TextStyle(
                  fontFamily:'Starwars', 
                  color: Colors.yellow,
                ),   
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 280),
                child: TextField(
                  onEditingComplete: (){},
                  enabled: true,
                  cursorColor: Colors.grey,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter a search term',
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(8),
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[600]!, 
                        width: 2.0
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, 
                        width: 2.0
                      ),
                    ),
                    prefixIcon: IconButton(
                      onPressed: (){},
                      iconSize: 15.0,
                      color: Colors.grey[400],
                      splashRadius: 20.0,
                      icon:FaIcon(FontAwesomeIcons.search),
                    ),
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
      body: SingleChildScrollView (
        child: Column(
          children: <Widget>[
            CategoryPicker(
              backgroundColor: Colors.grey[100],
              items: [
                CategoryPickerItem(
                  value: "All",
                  label: "All"
                ),
                CategoryPickerItem(
                  value: "Masculino",
                  label: "Masculino"
                ),
                CategoryPickerItem(
                  value: "Feminino",
                  label: "Feminino"
                ),
                CategoryPickerItem(
                  value: "N/A",
                  label: "N/A"
                ),
              ],
              onValueChanged: (value) {
                print(value.label);
              },
            ),
              Container(
              color: Colors.grey[180],
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 30.0),
              child:Column(
                children:[
                  for (int i=0; i<83; i++)
                    Itens_List()
                ],
            ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        items:[ 
          BottomNavigationBarItem(
            label: "Characters",
            icon: Icon(Icons.attribution),
          ),
          BottomNavigationBarItem(
            label: "SpaceShips",
            icon: FaIcon(FontAwesomeIcons.spaceShuttle), 
          ),
          BottomNavigationBarItem(
            label: "Planets",
            icon: Icon(Icons.language),
          ),
        ],
      )
    );
  }
}