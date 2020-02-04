
class UserList {
  List<_User> _results = [];

  UserList.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['results'].length);
    List<_User> temp = [];
    for (int i = 0; i < parsedJson['data'].length; i++) {
      _User result = _User(parsedJson['data'][i]["firstname"],parsedJson['results'][i]["data"]['lastname'],parsedJson['data'][i]["email"],parsedJson['data'][i]["avatar"]);
      temp.add(result);
    }
    _results = temp;
  }
  List<UserList> get results => results;
}

class _User {
  String _firstname,_lastname,_avatar,_email;

  _User(this._firstname, this._lastname, this._avatar, this._email);

  get email => _email;

  get avatar => _avatar;

  get lastname => _lastname;

  String get firstname => _firstname;


}