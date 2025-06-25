import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
      @override
     State<ToDoApp> createState() => _ToDoAppState();
     }
 class _ToDoAppState extends State<ToDoApp> {
  void _addTask(){
    if (taskController.text.isNotEmpty){
      setState(() {
        _tasks.add(taskController.text);
        taskController.clear();

      });
    }
  }
  void  _deleteTask(int index){
    setState(() {
      _tasks.removeAt(index);
      });
   }
  List<String> _tasks =[];
  TextEditingController taskController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Todo App'),
        backgroundColor: Colors.cyanAccent,
           ) ,
         body:Padding(padding: const EdgeInsets.all(16.0),
           child: Column(
                   children: [
            Row(children: [
            Expanded(child: TextField(
              controller: taskController,
              decoration: InputDecoration(
                labelText: 'Enter Task',
                border: OutlineInputBorder()
              ),
            )),
            SizedBox(width: 10,),
            ElevatedButton( style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, foregroundColor: Colors.black),
                onPressed:_addTask,
                child:Text('Add'))
                        ]
                 ),     SizedBox(
                         height: 250,
                         width: 500,
                         child: ListView.builder(
                             itemCount: _tasks.length,
                             itemBuilder: (context,index){
                               return  Card(
                                 child: ListTile(
                              title: Text(_tasks[index]),
                                   trailing: IconButton(onPressed:()=>
                                   _deleteTask(index),
                                       icon:Icon(Icons.delete,color: Colors.indigo,
                                       ) ),
                                 ),
                                );
                             }
                             )
                     )
                   ],
                 ),
               ),
             );
          }
        }
