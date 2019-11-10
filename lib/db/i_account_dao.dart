import 'package:fish_redux_crawler/model/account_profile.dart';

abstract class IAccountDao {
  Future<int> insertAccount(AccountProfile accountProfile);

  Future<List<Map<String, dynamic>>> queryAll();

  Future<Map<String, dynamic>> queryByMobile(String mobile);
}
