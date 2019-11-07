import 'package:fish_redux_crawler/db/attr_const.dart';

class AccountProfile {
  int _id;
  String _name;
  String _mobile;
  String _password;


  AccountProfile(this._name, this._mobile, this._password);

  AccountProfile.fromMap(Map<String, dynamic> map) {
    this._id = map[AccountProfileAttr.ATTR_ID];
    this._name = map[AccountProfileAttr.ATTR_NAME];
    this._mobile = map[AccountProfileAttr.ATTR_MOBILE];
    this._password = map[AccountProfileAttr.ATTR_PASSWORD];
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (null != _id) {
      map[AccountProfileAttr.ATTR_ID] = _id;
    }

    map[AccountProfileAttr.ATTR_NAME] = _name;
    map[AccountProfileAttr.ATTR_MOBILE] = _mobile;
    map[AccountProfileAttr.ATTR_PASSWORD] = _password;

    return map;
  }

  String get password => _password;

  String get mobile => _mobile;

  String get name => _name;

  int get id => _id;

  @override
  String toString() {
    return 'AccountProfile{_id: $_id, _name: $_name, _mobile: $_mobile, _password: $_password}';
  }


}
