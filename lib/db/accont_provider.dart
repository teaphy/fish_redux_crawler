import 'package:fish_redux_crawler/db/account_dao_impl.dart';
import 'package:fish_redux_crawler/db/i_account_dao.dart';
import 'package:fish_redux_crawler/model/account_profile.dart';

class AccountProvider{
  final IAccountDao _accountDao = AccountDaoImpl();

  Future<int> insertAccount(AccountProfile accountProfile) async {
    return _accountDao.insertAccount(accountProfile);
  }

  Future<List<AccountProfile>> queryAll() async {
    var list = await _accountDao.queryAll();
    var listResult = list.map((ap){
      return AccountProfile.fromMap(ap);
    }).toList();
    return listResult;
  }
}