import 'package:flutter/material.dart';
import 'package:hellow/pages/page_um.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          centerTitle: true,
        ),
        body: Body(context),
        drawer: MyDrawer(),
      ),
    );
  }

  MyDrawer(){
    return Container(
      
    );
  }

  Body(context){

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _carrossel(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _button('ListView Example', context),
              _button('Page 2', context),
              _button('Page 3', context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _button('Snackbar', context),
              _button('Dialog', context),
              _button('Toast', context),
            ],
          )
        ],
      ),
    );
  }

  _text(){
    return Text(
      'MyFirstApp',
      style: TextStyle(
        color: Colors.black,
        fontSize: 50,
      ),
    );
  }

  _button(texto, context){
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        texto, 
          style: TextStyle(
            color: Colors.white
          ),
        ),
      onPressed: () => _onClick(context),
    );
  }

  _img(img){
    return Image.network(img);
  }

  void _onClick(context){
    print('dale boy');
    Navigator.push(context, MaterialPageRoute(
      builder: (context){
        return PageUm();
      }
    ));
  }

  _carrossel(){
    return Container(
      margin: EdgeInsets.only(top: 12, bottom: 12),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img('https://miro.medium.com/max/3840/1*PF4g-KArgGHEDuhTHjD21w.jpeg'),
          _img('https://miro.medium.com/max/2800/0*Il8SPHMhrKkwoYjI'),
          _img('https://upload.wikimedia.org/wikipedia/commons/b/b5/Kotlin-logo.png'),
          _img('https://pbs.twimg.com/profile_images/473550724433858560/tuHsaI2U.png')
        ],
      ),
    );
  }

}
