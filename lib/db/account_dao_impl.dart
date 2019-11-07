import 'package:fish_redux_crawler/db/attr_const.dart';
import 'package:fish_redux_crawler/db/sql_manager.dart';
import 'package:fish_redux_crawler/model/account_profile.dart';

import 'i_account_dao.dart';

class AccountDaoImpl implements IAccountDao {
  final String _tableAccount = "table_account";

  @override
  Future<int> insertAccount(AccountProfile accountProfile) async {
    var db = await SqlManager.getCurrentDatabase();
    var isCreated = await SqlManager.isTableExits(_tableAccount);

    if (!isCreated) {
      var sb = StringBuffer()
        ..write("CREATE TABLE")
        ..write(" $_tableAccount")
        ..write("(")
        ..write(
            "${AccountProfileAttr.ATTR_ID} INTEGER PRIMARY KEY AUTOINCREMENT,")
        ..write("${AccountProfileAttr.ATTR_NAME} TEXT,")
        ..write("${AccountProfileAttr.ATTR_MOBILE} TEXT,")
        ..write("${AccountProfileAttr.ATTR_PASSWORD} TEXT")
        ..write(")")
        ..toString();
      db.execute(sb.toString());
    }

   var result = await db.insert(_tableAccount, accountProfile.toMap());

    return result;
  }

  @override
  Future<List<Map<String, dynamic>>> queryAll() async {
    var db = await SqlManager.getCurrentDatabase();
    var result = await db.query(_tableAccount, columns: [AccountProfileAttr.ATTR_ID, AccountProfileAttr.ATTR_NAME, AccountProfileAttr.ATTR_MOBILE, AccountProfileAttr.ATTR_PASSWORD]);
    return result;
  }
}
