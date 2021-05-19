import 'package:flutter/material.dart';

void main() => runApp(MyIFApp());

class MyIFApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda una cita',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: PaginaInicio(),
    ); //Fin MaterialApp
  } //Fin de widget
} //fin de MyifApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() {
    return _PaginaInicioState();
  }
} //Fin Statefulwidget

class _PaginaInicioState extends State<PaginaInicio> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda una cita'),
      ), //fin de App Bar

      body: Padding(
        padding: const EdgeInsets.all(1.5), //pading del body espacio blanco

        child: Container(
          //contenedor gris
          color: Colors.blue[100],
          height: 2000,
          width: 2000,
          padding: const EdgeInsets.all(10), //pading del body espacio blanco

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: 282,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/Jmanuelvm11/img-act4-ios/main/585d7b1c9be5209278dbd74c_clinica-dental.jpg'), alignment: Alignment.topCenter),
                  border: Border.all(
                    color: Colors.blueGrey[900],
                    width: 3.0,
                  ), //fin de border
                ), //fin de el decoration box
              ), //fin de el container

              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre(s)',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey[900],
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inoutdecoration
                ), //fin de TextField
              ), //fin de container

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Apellido(s)',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey[900],
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inputdecoration
                ), //fin de TextField
              ), //fin de container grupo especialidad

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572, //aqui

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'edad',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey[900],
                              width: 2.0,
                            ), //fin de border side
                          ), //fin de enable border
                          //! Change the Focused Border
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 3.0,
                            ), //fin de bordersize
                          ), //fin de outlineInput border
                        ), //fin de inputdecoration
                      ), //fin de TextField
                    ),
                    SizedBox(width: 16),
                    new DropdownButton<String>(
                      items: [
                        DropdownMenuItem<String>(
                          child: Text('17 de Enero'),
                          value: 'one',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('29 de  Enero'),
                          value: 'two',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('4 de Febrero'),
                          value: 'three',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('18 de Febrero'),
                          value: 'four',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('24 de Febrero'),
                          value: 'five',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('2 de Marzo'),
                          value: 'six',
                        ),
                      ],
                      onChanged: (String value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Text('Selecciona una fecha disponible'),
                      value: _value,
                    ), //fin de dropdown
                  ], //fin de widget
                ), //fin de row
              ), //fin de container

              SizedBox(height: 5),

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572, //aqui
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.blue[900],
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "Agendar",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.red,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "Reintentar",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ], //fin de widget
                ), //fin de row
              ), //fin de container colores
            ], //fin de widget2[]
          ), //fin de column
        ), //child container
      ), //fin de body padding
    ); //Fin Scaffold
  } //Fin de Widget
} //Fin _PaginaInicioState
