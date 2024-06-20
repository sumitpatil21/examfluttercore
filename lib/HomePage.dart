import 'package:examfluttercore/Globla.dart';
import 'package:examfluttercore/ModalPage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child:Column(
              children:List.generate(StudentList.length, (index) => Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage(StudentList[index]["img"]),
                  ),
                  subtitle: Text(StudentList[index]["std"],style: TextStyle(fontSize: 20),),
                  title: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      StudentList[index]["name"],
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed("/up");
                          });
                        },
                        child: Icon(
                          Icons.edit,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            StudentList.removeAt(index);
                          });
                        },
                        child: Icon(
                          Icons.delete,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),),
            )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/de");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
