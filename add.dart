
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

final bloodGroups = ['a', 'e',' t ',' h ','h','oi ', 're'];
String? selectedGroup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Doners'),
        backgroundColor: const Color.fromARGB(255, 7, 255, 85),
      ),
      body:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Donar Names')
                ),
               ),
            ),

             Padding(
               padding: const EdgeInsets.all(20.0),
               child: TextField(
                keyboardType: TextInputType.numberWithOptions(),
                maxLength: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Mobile number ')
                ),
               ),
             ),


             Padding(
               padding: const EdgeInsets.all(60.0),
               child: DropdownButtonFormField(
                
                decoration: InputDecoration(label: Text('Select blood group '))
                ,items: bloodGroups.map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
                ),
                ).toList(),
                onChanged: (val){
                  selectedGroup = val;
                } ),
             ),


             ElevatedButton(
               child: Text('submit'),
              onPressed:() { } ,
              style: ButtonStyle(maximumSize: MaterialStateProperty.all(size(double.infinity,50)),
              backgroundColor: MaterialStateProperty.all(Colors.amber,)
              ),
             ),

          ],
        ),
   

    );
  }
  
  Size? size(double infinity, int i) {}
}