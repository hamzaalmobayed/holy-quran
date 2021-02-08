
import 'package:flutter/material.dart';
import 'package:holy_quran/first_page.dart';
import 'package:video_player/video_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(home());
}
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Holy Quran",
      home: first(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class first extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return firstState();
  }

}
class firstState extends State<first>{
   static var a;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appbar(),
        body: body(),
       bottomNavigationBar: bottomBar(),




      ),
    );
  }
   void playRemoteFile(name) {
     AudioPlayer player = new AudioPlayer();
     player.play(name);
   }

  Widget bottomBar(){
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.red,
      selectedItemColor: Colors.redAccent,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          title: FlatButton(onPressed:(){playRemoteFile("https://www.panet.co.il/music/player/40195");},child: Text('الله اكبر',style: TextStyle(fontSize: 22,color: Colors.white),)),
          icon: Text(''),
        ),
        BottomNavigationBarItem(
          title: Text('سبحان الله',style: TextStyle(fontSize: 22),),
          icon: Text(''),
        ),
        BottomNavigationBarItem(
          title: CircleAvatar(backgroundColor: Colors.white,radius: 40,child: Text('الفاتحة',style: TextStyle(fontSize: 25,color: Colors.red),)),
          icon: Text(''),
        ),
        BottomNavigationBarItem(
          title: Text('الحمدلله',style: TextStyle(fontSize: 25),),
          icon: Text(''),
        ),
        BottomNavigationBarItem(
          title: Text('بسم الله',style: TextStyle(fontSize: 25),),
          icon: Text(''),
        ),
      ],
    );
  }
  Widget body(){
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/decor.jpg"),
              fit: BoxFit.cover)),
      child: TabBarView(
        children: [
          story(),
          nasheedList(),
          doaList(),
        ],
      ),
    );
  }
  AppBar appbar(){
    return AppBar(
      backgroundColor: Colors.red,
      title: Text("Holy Quran",style: TextStyle(fontSize: 30,color: Colors.white),),
      centerTitle: true,
      toolbarHeight: 130,
      elevation: 10,
      leading: IconButton(onPressed: (){},icon: Icon(Icons.menu,color: Colors.white,size: 40,),),
      actions: [
        Container(margin:EdgeInsets.all(15),child: CircleAvatar(radius: 30,backgroundImage: AssetImage("images/quran.png"),))
      ],
      bottom:TabBar(
        tabs: [
          Tab(child:Text("قصص ",style: TextStyle(fontSize: 30),) ,),
          Tab(child:Text("اناشيد ",style: TextStyle(fontSize: 30),)),
          Tab(child:Text("ادعية ",style: TextStyle(fontSize: 30),)),
        ],
      ),
    );
  }
  Widget nasheedList(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("بك ملهمي", "images/quran.png","https://youtu.be/b-Qudq_31s8"),

        ],
      ),
    );
  }
  Widget doaList(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
          nasheed("اللهم اهدنا", "images/quran.png","https://youtu.be/b-Qudq_31s8"),
        ],
      ),
    );
  }
  Widget nasheed(String name,String img,String video){
    return Container(
      child: RaisedButton(
        color: Colors.redAccent,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){return second();}));


        },
        child: Row(
          children: [
            CircleAvatar(radius: 40,backgroundImage: AssetImage(img),),
            Text(name,style: TextStyle(fontSize: 40,color: Colors.white),),
          ],
        ),
      ),
      padding: EdgeInsets.all(20),
      height: 150,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
  Widget story(){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              button("الصحابة"),
              button("الانبياء"),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button("الحيوانات"),
            ],
          ),
        ],
      ),
    );
  }

  Widget button(String name){
    return Container(
      child: RaisedButton(color: Colors.red,
          onPressed:(){
        if(name=="الصحابة"){
          a=1;
        }else if(name=="الانبياء"){
          a=2;
        }else{
          a=3;
          }
        Navigator.of(context).push(MaterialPageRoute(builder: (context){return second();}));
          },
          child: Text(name,style: TextStyle(fontSize: 30,color: Colors.white),)),
      padding: EdgeInsets.all(20),
      height: 150,
      width: 200,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

}

class second extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return secondState();
  }

}
class secondState extends State<second>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appbar(),
        body: body(),
        bottomNavigationBar:bottomBar(),




      ),
    );
  }

  Widget bottomBar(){
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.red,
      selectedItemColor: Colors.redAccent,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          title: Text('الله اكبر',style: TextStyle(fontSize: 22,color: Colors.white),),
          icon: Text(''),
        ),
        BottomNavigationBarItem(
          title: Text('سبحان الله',style: TextStyle(fontSize: 22),),
          icon: Text(''),
        ),
        BottomNavigationBarItem(
          title: CircleAvatar(backgroundColor: Colors.white,radius: 40,child: Text('الفاتحة',style: TextStyle(fontSize: 25,color: Colors.red),)),
          icon: Text(''),
        ),
        BottomNavigationBarItem(
          title: Text('الحمدلله',style: TextStyle(fontSize: 25),),
          icon: Text(''),
        ),
        BottomNavigationBarItem(
          title: Text('بسم الله',style: TextStyle(fontSize: 25),),
          icon: Text(''),
        ),
      ],
    );
  }
  Widget body(){
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/decor.jpg"),
              fit: BoxFit.cover)),
      child:page(),
    );
  }
  Widget page(){
    if(firstState.a==1){
      return friendList();
    }else if(firstState.a==2){
      return prophetList();
    }else{
      return animalList();
    }
  }
  AppBar appbar(){
    return AppBar(
      backgroundColor: Colors.red,
      title: Text("Holy Quran",style: TextStyle(fontSize: 30,color: Colors.white),),
      centerTitle: true,
      toolbarHeight: 80,
      elevation: 10,
      leading: IconButton(onPressed: (){},icon: Icon(Icons.menu,color: Colors.white,size: 40,),),
      actions: [
        Container(margin:EdgeInsets.all(15),child: CircleAvatar(radius: 30,backgroundImage: AssetImage("images/quran.png"),))
      ],
    );
  }
  Widget prophetList(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          nasheed("محمد", "images/quran.png"),
          nasheed("محمد", "images/quran.png"),
          nasheed("محمد", "images/quran.png"),
          nasheed("محمد", "images/quran.png"),
          nasheed("محمد", "images/quran.png"),
          nasheed("محمد", "images/quran.png"),
          nasheed("محمد", "images/quran.png"),
          nasheed("محمد", "images/quran.png"),
          nasheed("محمد", "images/quran.png"),
          nasheed("محمد", "images/quran.png"),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 40,
            child: IconButton(icon: Icon(Icons.arrow_back),
              iconSize: 30,
              color: Colors.white,
              padding: EdgeInsets.all(20),
            onPressed: (){
              Navigator.of(context).pop();
            },),),

        ],
      ),
    );
  }
  Widget animalList(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          nasheed("الهدهد", "images/quran.png"),
          nasheed("الهدهد", "images/quran.png"),
          nasheed("الهدهد", "images/quran.png"),
          nasheed("الهدهد", "images/quran.png"),
          nasheed("الهدهد", "images/quran.png"),
          nasheed("الهدهد", "images/quran.png"),
          nasheed("الهدهد", "images/quran.png"),
          nasheed("الهدهد", "images/quran.png"),
          nasheed("الهدهد", "images/quran.png"),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 40,
            child: IconButton(icon: Icon(Icons.arrow_back),
              iconSize: 30,
              color: Colors.white,
              padding: EdgeInsets.all(20),
              onPressed: (){
                Navigator.of(context).pop();
              },),),
        ],
      ),
    );
  }
  Widget friendList(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          nasheed("اللهم اهدنا", "images/quran.png"),
          nasheed("اللهم اهدنا", "images/quran.png"),
          nasheed("اللهم اهدنا", "images/quran.png"),
          nasheed("اللهم اهدنا", "images/quran.png"),
          nasheed("اللهم اهدنا", "images/quran.png"),
          nasheed("اللهم اهدنا", "images/quran.png"),
          nasheed("اللهم اهدنا", "images/quran.png"),
          nasheed("اللهم اهدنا", "images/quran.png"),
          nasheed("اللهم اهدنا", "images/quran.png"),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 40,
            child: IconButton(icon: Icon(Icons.arrow_back),
              iconSize: 30,
              color: Colors.white,
              padding: EdgeInsets.all(20),
              onPressed: (){
                Navigator.of(context).pop();
              },),),
        ],
      ),
    );
  }
  Widget nasheed(String name,String img){
    return Container(
      child: RaisedButton(
        color: Colors.redAccent,
        onPressed: (){},
        child: Row(
          children: [
            CircleAvatar(radius: 40,backgroundImage: AssetImage(img),),
            Text(name,style: TextStyle(fontSize: 40,color: Colors.white),),
          ],
        ),
      ),
      padding: EdgeInsets.all(20),
      height: 150,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
  Widget story(){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              button("الصحابة"),
              button("الانبياء"),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button("الحيوانات"),
            ],
          ),
        ],
      ),
    );
  }

  Widget button(String name){
    return Container(
      child: RaisedButton(color: Colors.red,onPressed:(){},child: Text(name,style: TextStyle(fontSize: 30,color: Colors.white),)),
      padding: EdgeInsets.all(20),
      height: 150,
      width: 200,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

}
