#ifndef _MYDB_TABLE_H_
#define _MYDB_TABLE_H_ 

using namespace std;
#include <string>

class MyDB_Table{
public:
	MyDB_Table(string name, string storageLoc);
	string & getName();
	string & getStorageLoc();
	~MyDB_Table();
private:
	string tableName;
	string storageLoc;
};

// #undef _MYDB_TABLE_H_
#endif