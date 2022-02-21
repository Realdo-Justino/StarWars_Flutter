import 'package:http/http.dart';
import "dart:convert";

class Resultados2{
  String name='';
  String gender='';
  String height='';
  String birth='';
  String url='';
  void getResultados()async{
      Response resposta = await get(Uri.parse('https://swapi.dev/api/people/?page=1'));
      Map dados = jsonDecode(resposta.body);
      print(dados['{name}']);
    
  }
}