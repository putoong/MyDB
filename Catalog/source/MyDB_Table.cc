#include "MyDB_Table.h"

MyDB_Table::MyDB_Table(string name, string storageLocIn){
	tableName = name;
	storageLoc = storageLocIn;
}

string & MyDB_Table::getName(){
	return tableName;
}

string & MyDB_Table::getStorageLoc(){
	return storageLoc;
}
