#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.70])
AC_INIT([libdt],[0.1],[rickmark@outlook.com])dnl

AM_INIT_AUTOMAKE
AC_CONFIG_SRCDIR([src/])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])dnl

# Checks for programs.
AC_PROG_CC
AM_PROG_CC_C_O
LT_INIT

# Checks for header files.
AC_HEADER_STDBOOL
AC_CHECK_HEADERS([fcntl.h sys/time.h])dnl

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_C_INLINE
AC_C_RESTRICT
AC_TYPE_SIZE_T
AC_TYPE_SSIZE_T
AC_TYPE_INT8_T
AC_TYPE_INT16_T
AC_TYPE_INT32_T
AC_TYPE_INT64_T
AC_TYPE_UINT8_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_CHECK_TYPES([ptrdiff_t])dnl

# Checks for libraries.
AC_CHECK_LIB([lzfse],[lzfse_decode])dnl

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_MMAP
AC_FUNC_REALLOC
AC_CHECK_FUNCS([gettimeofday memmove memset munmap strchr])dnl

# Output.
AC_CONFIG_FILES([Makefile include/Makefile src/Makefile tools/Makefile])
AC_OUTPUT
