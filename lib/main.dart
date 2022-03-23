import 'package:falciablaniz/text_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FortuneTelling());
}

class FortuneTelling extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FALCI ABLA',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Fortune(),
    );
  }
}

class Fortune extends StatefulWidget {
  @override
  _FortuneState createState() => _FortuneState();
}

class _FortuneState extends State<Fortune> {
  bool ask = false;
  bool para = false;
  bool tavsiye = false;
  void goToTextPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> TextPage(this.ask,this.para,this.tavsiye)));
    ask = false;
    para = false;
    tavsiye = false;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FALCI ABLANIZ',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'FALCI ABLANIZ',
            style: TextStyle(
              fontFamily: 'PlayBall',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
          titleSpacing: 2.0,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Image.asset('assets/images/crystal.png'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'AŞK DURUMU',
                    style: TextStyle(
                      fontFamily: 'Karma',
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                  leading: Icon(Icons.whatshot),
                  onTap: (){
                    goToTextPage();
                    ask=true;
                  },
                ),
                color: Colors.purple[500],
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'PARA DURUMU',
                    style: TextStyle(
                        fontFamily: 'Karma',
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                  leading: Icon(Icons.attach_money),
                  onTap: (){
                    goToTextPage();
                    para = true;
                  },
                ),
                color: Colors.purple[500],
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'GÜNLÜK TAVSİYE',
                    style: TextStyle(
                        fontFamily: 'Karma',
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                  leading: Icon(Icons.book),
                  onTap: (){
                    goToTextPage();
                    tavsiye = true;
                  },
                ),
                color: Colors.purple[500],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Tıkla ve sonucu gör...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Courgette',
                    color: Colors.black87,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.copyright,color: Colors.black26,size: 19,),
                  SizedBox(width: 5,),
                  Text(
                    'DevoneSoft',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Karma',
                      color: Colors.black38,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
