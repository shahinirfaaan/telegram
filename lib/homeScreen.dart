import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
with SingleTickerProviderStateMixin {
  @override
  late TabController _controller;
     @override 
    
     void initState() {
       super.initState();
       _controller = TabController(length: 4, initialIndex: 1 , vsync: this);
       
     }
     @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Telegram'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.lock_open)),
          SizedBox(
            width: 5,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          SizedBox(
            width: 10,
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: 'Chats',),
            Tab(text: 'Groups',),
            Tab(text: 'Channels',),
            
          ])
      ),
      body: TabBarView(
        controller: _controller,
        children: [
        Text('Camera'),
        Text('Chats'),
        Text('Groups'),
        Text('Channels')
      ]),
    );
  }
}
