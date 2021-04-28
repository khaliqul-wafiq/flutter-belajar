import 'dart:convert';

import 'package:flutter/material.dart';

class Crud extends StatefulWidget {
  @override
  _CrudState createState() => new _CrudState();
}

class _CrudState extends State<Crud> {
  get http => null;

  Future<List> getData() async {
    final response = await http.get("http://192.168.1.9/DataAset/getData.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Data Aset"),
        ),
        body: new FutureBuilder<List>(
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? new ItemList()
                : new Center(
                    child: new CircularProgressIndicator(),
                  );
          },
        ));
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Text(list[i]['nama_aset']);
      },
    );
  }
}
