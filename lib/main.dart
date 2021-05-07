import 'package:flutter/material.dart';

void main() => runApp(MiRatoneraApp());
class MiRatoneraApp extends StatelessWidget{
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
        title: new Text('Empresa'),
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
        title: new Text('Productos'),
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
        title: new Text('Contacto'),
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
      ),//fin de container
    );//fin de scaffold
  }//fin de widget
}//fin Inicio