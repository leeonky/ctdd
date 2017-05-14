#include <stdlib.h>
#include "../test.h"
#include "foo/foo.h"

static int init_suite1() {
	return 0;
}

static int clean_suite1() {
	return 0;
}

static void test_foo() {
	CU_ASSERT(foo(1,2) == 3);
}

int main(){
	CU_pSuite suite = NULL;
	init_test();

	suite = create_suite("suite 1", init_suite1, clean_suite1);
	add_case(suite, test_foo);

	return run_test();
}

