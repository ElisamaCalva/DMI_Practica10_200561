// Creado por: Elisama Arturo Calva Moreno
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'dart:async'; 
import 'dart:convert'; 
import 'package:http/http.dart'
    as http; 
import 'package:movieapp_200561/common/Constants.dart'; 
import 'package:movieapp_200561/model/Media.dart'; 

class HttpHandler {
  final String _baseUrl = "api.themoviedb.org"; 
  final String _lenguage =
      "es-MX"; 

  
  Future<dynamic> getJson(Uri uri) async {
    http.Response response =
        await http.get(uri); 
    return json
        .decode(response.body);
  }

  
  Future<List<Media>> fetchMovies() {
    var uri = new Uri.https(
        _baseUrl,
        "3/movie/popular", 
        {
          'api_key': API_KEY,
          'page': "1",
          'language': _lenguage
        }); 
  
    return getJson(uri).then(((data) =>
        data['results'].map<Media>((item) => new Media(item)).toList()));
  }
}
