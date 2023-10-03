import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper{
  static Future<void> createTables(sql.Database database) async{
    await database.execute("""CREATE TABLE data(
      JOB_NUMBER INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      NAME VARCHAR (20) NOT NULL,
      POSTCODE VARCHAR (20) NOT NULL,
      ADDRESS CHAR (25) NOT NULL,
      TYPE_OF_JOB CHAR (20) NOT NULL,
      STATUS CHAR (20) NOT NULL,
      EMAIL CHAR (20),
      PHONE CHAR (15),
      SERIAL CHAR (40),
      MODEL CHAR (40),
      REPORT CHAR (300),
      AVAILABILITY CHAR (20)
    )""");
  }
}