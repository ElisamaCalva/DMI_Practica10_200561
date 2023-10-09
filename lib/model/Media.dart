// Creado por: Elisama Arturo Calva Moreno
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'dart:convert';
import 'package:movieapp_200561/common/Util.dart';

class Media {
  int id;
  double voteAverage;
  String title;
  String posterPath;
  String backdropPath;
  String overview;
  String releaseDate;
  List<dynamic> genreIds;

  String getPosterUrl() => getMediumPictureUrl(posterPath);
  String getBackDropUrl() => getLargePictureUrl(backdropPath);
  String getGenres()=> getGenreValues(genreIds);
  int getReleaseYear(){
    if (releaseDate == null || releaseDate=="")
    return 0;
    return DateTime.parse(releaseDate).year;
  }

  factory Media(Map jsonMap) {
    try {
      return new Media.deserealize(jsonMap);
    } catch (ex) {
      throw ex;
    }
  }

  Media.deserealize(Map json)
      : id = json["id"].toInt(),
        voteAverage = json["vote_average"].toDouble(),
        title = json["title"],
        posterPath = json["poster_path"] ?? "",
        backdropPath = json["backdrop_path"] ?? "",
        overview = json["overview"],
        releaseDate = json["release_date"],
        genreIds = json["genre_ids"].toList();
}
