import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/photomodel.dart';

class Photosscreen extends StatefulWidget {
  const Photosscreen({super.key});

  @override
  State<Photosscreen> createState() => _PhotosscreenState();
}

class _PhotosscreenState extends State<Photosscreen> {
  List<Photos> photoslist = [];

  Future<List<Photos>> photosApi() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos'),
    );
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(id: i['id'], title: i['title'], url: i['url']);
        photoslist.add(photos);
      }
      return photoslist;
    } else {
      return photoslist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Photos API")),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Photos>>(
                future: photosApi(),
                builder: (context, snapshot) {
                  return ListView.builder(
                      itemCount: photoslist.length,
                      itemBuilder: (context, index){
                        return ListTile(
                          leading: CircleAvatar(backgroundImage: NetworkImage(snapshot.data![index].url.toString())),
                          subtitle: Text(snapshot.data![index].title.toString()),
                          title: Text('User ID :${snapshot.data![index].id}'),
                        );
                      });
            }),
          ),
        ],
      ),
    );
  }
}
