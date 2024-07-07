import 'package:flutter/material.dart';


 main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: TestPage(),
    );
  }
}

//  main() {
//  runApp( MyApp());

// }
class TestPage extends StatelessWidget{
List todolist =[
{
  "name":'Communication system quiz ',
  "time ":" 10:00 AM"
},
{
  "name":"OS Report ",
  "time ":" 11:00 AM"
},
{
  "name":"Buy some stuff ",
  "time ":" 1:00 PM"
},
{
  "name":"Go to gym ",
  "time ":" 2:00 PM"
},
{
  "name":"flutter task ",
  "time ":" 6:00 PM"
},
];
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
        body:
        Container(
          color: Color(0xFF4368FF),
           child: Column(children: [ 
          Text("Todo List" , style: TextStyle(fontSize: 30,color: Colors.white),),
          
            
       Container  ( 
        width: 500,
        height: 500,
        child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context ,i){
return ListTile( title:Text("${todolist[i]['name']}",style: TextStyle(fontSize:20,color: Colors.white),),subtitle: Text("${todolist[i]["time "]}"),
trailing: IconButton( onPressed: (){
showDialog(context: context, builder: (context )
{
  return AlertDialog(
    actions: [
      TextButton(onPressed: (){
        Navigator.of(context).pop();
        print("Cancel");},child: Text("Cancel"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).pop();
        print("Yes");},child: Text("Yes",style: TextStyle(color: Colors.red) ,),)

    ],
    title:Text("Delete"),
  content: Text("Are you sure you want to delete this item? ") ,
  );
  }
);
},
icon: Icon(Icons.delete, color: Colors.white,),
));
            },),),
           ],
           ),
        )
        
        
    );
  }
}
