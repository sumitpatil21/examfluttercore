import 'dart:io';

import 'package:examfluttercore/ModalPage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Globla.dart';

XFile? xfileimg;
File? fileimg;
ImagePicker picker=ImagePicker();
class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}
TextEditingController txtname=TextEditingController();
TextEditingController txtgrid=TextEditingController();
TextEditingController txtstd=TextEditingController();
TextEditingController txtimg=TextEditingController();
class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 160,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                image: (fileimg!=null)?DecorationImage(image: FileImage(fileimg!),fit: BoxFit.cover):null,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
        
                IconButton(onPressed: () async {
                  xfileimg= await picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    if(xfileimg!=null)
                      {
                        fileimg=File(xfileimg!.path);
                      }
                  });
                }, icon: Icon(Icons.image,size: 40,),),
                IconButton(onPressed: () async {
                  xfileimg= await picker.pickImage(source: ImageSource.camera);
                  setState(() {
                    if(xfileimg!=null)
                    {
                      fileimg=File(xfileimg!.path);
                    }
                  });
                }, icon: Icon(Icons.camera_alt,size: 40,),),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                  child: TextFormField(
                    controller:  txtname,
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
                    controller:  txtgrid,
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
                    controller: txtstd,
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
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/");
                  Name=txtname.text;
                  Grid=txtgrid.text;
                  Standard=txtstd.text;
                  StudentList.add(
                      {
                        "name":Name,
                        "grid":Grid,
                        "Standard":Standard,
                        "img":Img,
                      }
                  );});
              },
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Submit",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List StudentList=[
];

String? Name;
String? Grid;
String? Standard;
File? Img;