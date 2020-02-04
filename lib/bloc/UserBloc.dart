import 'package:flutter_bloc/model/User.dart';
import 'package:flutter_bloc/resource/NetworkProvider.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc{

  // ignore: close_sinks
  final _data = PublishSubject<UserList>();
  Observable<UserList> get allUsers =>_data.stream;


  fetchAllUsers() async {
    UserList itemModel = await NetworkProvider().getUserDetails();
    _data.sink.add(itemModel);
  }

  dispose() {
    _data.close();
  }
}

final bloc = UserBloc();
