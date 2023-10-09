// Creado por: Elisama Arturo Calva Moreno
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart'; 
import 'package:movieapp_200561/common/HttpHandler.dart'; 
import 'package:movieapp_200561/media_list.dart';

class Home extends StatefulWidget {
  const Home(
      {super.key}); 
  @override
  State<Home> createState() =>
      _HomeState(); 
}

class _HomeState extends State<Home> {

  

  final TextStyle customTextStyle = TextStyle(
    fontFamily: 'si', 
    fontSize: 16.0, 
    fontWeight: FontWeight
        .bold, 
  );

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
        
        title: new Text("MovieApp-200561"), 
        titleTextStyle: TextStyle(fontFamily: 'si'), 
        backgroundColor: Color.fromARGB(255, 0, 60, 255),

        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              
            },
          ),
        ],
      ),
      drawer: new Drawer(
        
        child: new ListView(children: <Widget>[
          new DrawerHeader(
              child: new Material()), 

          
          new ListTile(
            title: new Text(
              "Peliculas",
              style: TextStyle(fontFamily: 'si'),
            ),
            trailing: new Icon(Icons.local_movies), 
          ),


          new Divider(
            height: 5.0,
          ),

          
          new ListTile(
            title: new Text(
              "Television",
              style: TextStyle(fontFamily: 'si'),
            ),
            trailing: new Icon(Icons.live_tv), 
          ),

          
          new Divider(
            height: 5.0,
          ),

          
          new ListTile(
            title: new Text(
              "Cerrar",
              style: TextStyle(fontFamily: 'si'),
            ),
            trailing: new Icon(Icons.exit_to_app), 
            onTap: () => Navigator.of(context)
                .pop(), 
          ),
        ]),
      ),
      body: PageView(
        children: <Widget>[
          new MediaList()
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        
        items: _obtenerIconos(),
      ),
    );
  }

  
  List<BottomNavigationBarItem> _obtenerIconos() {
    return [
      new BottomNavigationBarItem(
        icon: new Icon(Icons.thumb_up), 
        label: ("Populares"), 
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.update), 
        label: ("Proximamente"), 
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.star), 
        label: ("Mejor valorados"), 
      ),
    ];
  }
}
