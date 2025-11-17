import 'package:flutter/material.dart';

class MyFirstApp extends StatelessWidget{
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyHomePage(),
   );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text('my first app'),
      ),
      drawer: Drawer(
        child: Center(
          child: Text(
            'My Drawer',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue),
          ),
        ),
      ),
      body: Center(
        child: Image.network(
          'https://media1.tenor.com/images/2de8680ef8cf1e289cd71b573055e80b/tenor.gif?itemid=11300516',
        ),
      ),
    );
  }
}


class BusinessCard extends StatelessWidget{
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyBussinessCard(),
   );
  }
}

class MyBussinessCard extends StatelessWidget {
  const MyBussinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xff274561),
     appBar: AppBar(
      backgroundColor: Color(0xff274561),
      title: Text('Business Card',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.bold,
                    color: Colors.black
                  ),),
      centerTitle: true,
     ),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            child: CircleAvatar(
                                radius: 90,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage('assets/images/Oracle.png'),
                               ),
          ),
          const SizedBox(height: 10,),
          Text('Mahrous Eshak',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight:FontWeight.bold, 
            fontFamily: 'DynaPuff',
          ),
          ),
          const SizedBox(height: 10,),
          Text('Oracle Developer Fomrs And Reports',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight:FontWeight.bold, 
            fontFamily: 'PirataOne',
          ),
          ),
          const SizedBox(height: 10,),
          Divider(
            indent: 10,
            endIndent: 10,
          ),
          const SizedBox(height: 10,),
          Container(
            height: 50,
            width: 400,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 50,),
                Text('01503599822',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 50,
            width: 400,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 50,),
                Text('mahrous_eshak2018@yahoo.com',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 50,
            width: 400,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Icon(Icons.home),
                SizedBox(width: 50,),
                Text('Ofissoft Company',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
          )
        ],
       ),
     ),
    );
  }
}