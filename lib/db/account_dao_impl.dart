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
        ..write("${AccountProfileAttr.ATTR_MOBILE} TEXT UNIQUE NOT NULL,")
        ..write("${AccountProfileAttr.ATTR_PASSWORD} TEXT NOT NULL")
        ..write(")")
        ..toString();
      db.execute(sb.toString());
    }

   var result = await db.insert(_tableAccount, accountProfile.toMap());

    return result;
  }

  @override
  Future<Map<String, dynamic>> queryByMobile(String mobile) async {
    var db = await SqlManager.getCurrentDatabase();
    var result = await db.query(_tableAccount,
        columns: [AccountProfileAttr.ATTR_ID,
          AccountProfileAttr.ATTR_NAME,
          AccountProfileAttr.ATTR_MOBILE,
          AccountProfileAttr.ATTR_PASSWORD],
    where: "${AccountProfileAttr.ATTR_MOBILE} = ?",
    whereArgs: [mobile]);

    if (result.length == 0) {
      return null;
    }
    return result[0];
  }

  @override
  Future<List<Map<String, dynamic>>> queryAll() async {
    var db = await SqlManager.getCurrentDatabase();
    var result = await db.query(_tableAccount, columns: [AccountProfileAttr.ATTR_ID, AccountProfileAttr.ATTR_NAME, AccountProfileAttr.ATTR_MOBILE, AccountProfileAttr.ATTR_PASSWORD]);
    return result;
  }
}
