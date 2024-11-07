import 'package:advanced_to_do_list/Providers/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      //appBar: AppBar(backgroundColor: Colors.teal[400],),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Row(
                children: [
                  Icon(Icons.playlist_add_check, size: 40, color: Colors.white),
                  Text("ToDayDo", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold,),),
                ],
              ),
              // Consumer(
              //   builder: (context,TaskProvider value, child) {
              //     final total = value.taskData?.total ?? 0;
              //
              //     //return Text("${total} Tasks", style: const TextStyle(color: Colors.white, fontSize: 18,),);
              // //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
