import 'package:flutter/material.dart';


class StackLogin extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final Widget _expandList = Positioned(
      top: 5,
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: new Container(
        margin: EdgeInsets.only(left:10.0, right:5.0, top:10.0),
        padding: EdgeInsets.all(6.6),
        constraints: BoxConstraints(maxHeight: 300.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
              )
            ]
        ),
        child: new Column(
          children: <Widget>[
            TextField(decoration: InputDecoration(
                hintText: "username",
                labelText: 'key',
                prefixIcon: Icon(Icons.lock)
            )),
            TextField(decoration: InputDecoration(
                hintText: "password",
                labelText: 'secret',
                prefixIcon: Icon(Icons.lock)
            ),
                obscureText: true)
          ],
        ),
      ),
    );
    Widget locationPos = new Positioned(
      top: 200,
      width: MediaQuery.of(context).size.width,
      height: 150,
      child:Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(left: 10.0,right: 10.0),
        constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width,maxHeight: 150),
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(9.5)
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                  flex:0,
                  child: TextField(
                    decoration: InputDecoration(
                    hintText: "username",
                        labelText: 'key',
                        prefixIcon: Icon(Icons.lock)
                    ))
              ),
              Expanded(
                  flex:0,
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "username",
                          labelText: 'key',
                          prefixIcon: Icon(Icons.lock)
                      ))
              ),
              Expanded(
                  flex:0,
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "username",
                          labelText: 'key',
                          prefixIcon: Icon(Icons.lock)
                      ))
              )
             ],

          ),
        )
      ),
    );

    return new Stack(
      fit:StackFit.loose,
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 5.0,right: 5.0,top: 10.0, bottom: 10.0),
          alignment: Alignment.center,
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(9.5)
          ),
          child: new Text("One",style: new TextStyle(color: Colors.deepOrangeAccent,fontSize: 20.0)),
        ),
        _expandList,
        locationPos
      ],
    );
  }
}