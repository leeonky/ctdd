SUBDIRS = 

if !ENV_PRD
SUBDIRS += foo_test
endif

if !ENV_TEST
SUBDIRS += foo
endif

EXTRA_DIST = test.h test.sh

AM_CFLAGS = -I$(top_srcdir)
