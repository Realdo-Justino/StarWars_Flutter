import 'package:http/http.dart';
import "dart:convert";

class Resultados{
  String name='';
  String gender='';
  String height='';
  String birth='';
  String url='';

  Resultados(String url){
    this.url=url;
  }
  Future<void> getResultados()async{

    Response resposta = await get(Uri.parse('https://swapi.dev/api/$url'));
    Map dados = jsonDecode(resposta.body);
    name=dados['name'];
    gender=dados['gender'];
    birth=dados['birth_year'];
    height=dados['height'];
  }
}