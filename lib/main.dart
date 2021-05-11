import 'package:flutter/material.dart';

void main() => runApp(Aeropuerto());
class Aeropuerto extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Mi Ratonera',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),//ruta ventanas
      routes:<String, WidgetBuilder>{
        "/Inicio":(BuildContext context)=> Inicio(),
        "/Empresa":(BuildContext context)=> Empresa(),
        "/Productos":(BuildContext context)=> Productos(),
        "/Contacto":(BuildContext context)=> Contacto(),
      },//fin de rutas
      home: Inicio()
    );//fin de materialapp
  }//fin widget
}//fin ratonera
class Empresa extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: new Text('EMPRESA'),
      ),
      body: Center(
        child: Text ('Sección Empresa'),
      ),
    );//fin de Scaffold
  }//fin de widget Empresa
}//fin de empresa

class Productos extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: new Text('PRODUCTOS'),
      ),
      body: Center(
        child: Text ('Sección Productos'),
      ),
    );//fin de Scaffold
  }//fin de widget Productos
}//fin de Productos

class Contacto extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: new Text('CONTACTO'),
      ),
      body: Center(
        child: Text ('Sección Contacto'),
      ),
    );//fin de Scaffold
  }//fin de widget Contacto
}//fin de Contacto

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:130, bottom:10, right:10, left:10),
        decoration: BoxDecoration(
          color: Colors.brown, 
          image:DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/karla1901/mis_imagenes/main/aeropuerto.jpg'),alignment: Alignment.topCenter)
        ),//fin caja
          child: Column(
          children: <Widget>[
            //hacemos la primera fila de el mapa
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                      onPressed: () {
                        Navigator.pushNamed(context, "/inicio");
                      }, //onpressed
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "INICIO",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w900),
                          ), //fin del center
                        ), //fin center
                      ), //fin sizedbox de inicio
                    ), //boton inicio
                  ) //fin padding
                ], //fin widget niño
              ), //fin de column dentro de column interna 1
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/empresa");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("EMPRESA", textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  )
                ],
              ), //r1 columna 2
            ] //segundo children fin 2 widget
                ), //cierre de row- fila 1

//inicio de la fila 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/productos");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("PRODUCTOS", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ), // row 2 fin columna 1
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/contacto");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("CONTACTO", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ], //fin children del 2-2
                ), //fin row2 columna 2
              ],
            ), //fin row 2 fila 2
          ], //cierre de children widget 1
        ), //cierre de column en el child
      ),//fin de container
    );//fin de scaffold
  }//fin de widget
}//fin Inicio

