#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([ctdd], [1.0.0], [leeonky@gmail.com])
AC_CONFIG_SRCDIR([test.h])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE([foreign])

AC_ARG_VAR(ENV, TEST; DEV)

# Checks for programs.
AC_PROG_CC
AC_PROG_MAKE_SET

AC_CHECK_LIB([cunit], [CU_initialize_registry])

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AM_CONDITIONAL([ENV_TEST], [test "x$ENV" = xTEST])
AM_CONDITIONAL([ENV_PRD], [test "x$ENV" != xDEV && test "x$ENV" != xTEST])

AC_CONFIG_FILES([Makefile])

# Production Makefile
AM_COND_IF([ENV_TEST], [],
	  [AC_CONFIG_FILES([foo/Makefile])])

# Testing Makefile
AM_COND_IF([ENV_PRD], [],
	  [AC_CONFIG_FILES([foo_test/Makefile])])

AC_OUTPUT
