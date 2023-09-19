import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Workspace extends StatefulWidget {
  const Workspace({super.key});

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {

  @override
  Widget build(BuildContext context) {
    final TabPages=<Widget>[
    const Center(child: Icon(Icons.cloud),),
      const Center(child: Icon(Icons.account_circle_outlined),),
      const Center(child: Icon(Icons.padding),)
    ];


    final Tabname=<Tab>[
      const Tab(text: 'tab1'),
      const Tab(text: 'tab2'),
      const Tab(text: 'tab3'),
    ];
    return DefaultTabController(
     length: TabPages.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("My Workspace"),
          bottom: TabBar(
            tabs:TabPages
          ),
        ),
        body: TabBarView(
          children: Tabname,
        )
      ),
    );
  }
}
