#ifndef _PAGE_HANDLE_H_
#define _PAGE_HANDLE_H_

using namespace std;
#include <memory>

class MyDB_PageHandle;
typedef shared_ptr<MyDB_PageHandle> MyDB_PageHandlePtr;

class MyDB_PageHandle{
public:
	MyDB_PageHandle();
	~MyDB_PageHandle();
};

#endif