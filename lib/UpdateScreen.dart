import 'package:flutter/material.dart';

class Updatescreen extends StatefulWidget {
  const Updatescreen({super.key});

  @override
  State<Updatescreen> createState() => _UpdatescreenState();
}

class _UpdatescreenState extends State<Updatescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Screen",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: TextFormField(

              decoration: InputDecoration(
                  label: Text("Student Name"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.5,
                      )
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: TextFormField(

              decoration: InputDecoration(
                  label: Text("GRID"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.5,
                      )
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: TextFormField(

              decoration: InputDecoration(
                  label: Text("Standard"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.5,
                      )
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
