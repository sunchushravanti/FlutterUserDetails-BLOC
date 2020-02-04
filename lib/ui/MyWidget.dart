import 'package:flutter/material.dart';
import 'package:flutter_bloc/bloc/UserBloc.dart';
import 'package:flutter_bloc/model/User.dart';

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllUsers();
    return Scaffold(
      body: StreamBuilder(
        stream: bloc.allUsers,
        // ignore: missing_return
        builder: (context,AsyncSnapshot<UserList> snapShot){
          if(snapShot.hasData){
            return BlocWidget(snapShot);
          }
        }]
      ),
    );
    }

Widget BlocWidget(AsyncSnapshot<UserList> snapshot){
    return ListView.builder(
        itemCount: snapshot.data.results.length,
        itemBuilder: (BuildContext context,int pos){
         return new TextField("${snapshot.data.results[pos].results}");
    });
}

}