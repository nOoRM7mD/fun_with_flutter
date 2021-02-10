import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../details/second_screen.dart';
import 'package:http/http.dart' as http;
import 'my_home_page.dart';

class MyHomePageState extends State<MyHomePage> {
  List _itemsList = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

/*  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      _itemsList.add(getRow(i));
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('MyFirstApp '),
          ),
          drawer: _myDrawer(),
          body: _getScreenBody()),
      theme: ThemeData.dark(),
    );
  }

  _getScreenBody() {
    if (showLoadingDialog()) {
      return getProgressDialog();
    } else {
      return _getListView();
    }
  }

  showLoadingDialog() {
    return _itemsList.length == 0;
  }

  getProgressDialog() {
    return Center(child: CircularProgressIndicator(
      backgroundColor: Colors.red,
    ));
  }

  Widget _myDrawer() {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ListTile(
              title: Text(
                'Item1',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(
                Icons.color_lens,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getListView() {
    return ListView.builder(
      itemBuilder: _getRowWidget,
      itemCount: _itemsList.length,
    );
  }

  Widget _getRowWidget(BuildContext context, int index) {
    return ListTile(
      title: Text(
        "Row ${_itemsList[index]["title"]}"
      ),
      subtitle: Text("Row ${_itemsList[index]["title"]}"),
      trailing: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      leading: CircleAvatar(
        child: FlutterLogo(
          size: 20,
        ),
        backgroundColor: Colors.red,
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>
                SecondScreen("Row ${_itemsList[index]["title"]}")));
      },
    );
  }

  Widget getRow(BuildContext context, int i) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("Row ${_itemsList[i]["title"]}"),
    );
  }

  Future<void> loadData() async {
    String dataURL = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataURL);
    setState(() {
      _itemsList = jsonDecode(response.body);
    });
  }
}
