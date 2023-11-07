//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //variable creation 
  final CollectionReference donar=FirebaseFirestore.instance.collection('donor');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Donation App'),
        backgroundColor: Colors.amber,
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, '/add');
       },
      backgroundColor: const Color.fromARGB(255, 213, 25, 25),
      child: Icon(Icons.add,size: 40),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: StreamBuilder(
        stream:donar.snapshots(),
      builder: (context,AsyncSnapshot snapshot) {
        if(snapshot.hasData){
          print(snapshot.data);
          return ListView.builder(
            itemCount:snapshot.data!.docs.length,
            itemBuilder: (context, index){
              final DocumentSnapshot donorSnap = snapshot.data.docs[index];
              return Text(donorSnap['name']);
             
            });

        }
        

        return Container();
      }
      
      
       ),
    );
  }
}
