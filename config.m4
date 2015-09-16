dnl $Id$
dnl config.m4 for extension phpgpio

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(phpgpio, for phpgpio support,
dnl Make sure that the comment is aligned:
dnl [  --with-phpgpio             Include phpgpio support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(phpgpio, whether to enable phpgpio support,
dnl Make sure that the comment is aligned:
dnl [  --enable-phpgpio           Enable phpgpio support])

if test "$PHP_PHPGPIO" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-phpgpio -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/phpgpio.h"  # you most likely want to change this
  dnl if test -r $PHP_PHPGPIO/$SEARCH_FOR; then # path given as parameter
  dnl   PHPGPIO_DIR=$PHP_PHPGPIO
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for phpgpio files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       PHPGPIO_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$PHPGPIO_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the phpgpio distribution])
  dnl fi

  dnl # --with-phpgpio -> add include path
  dnl PHP_ADD_INCLUDE($PHPGPIO_DIR/include)

  dnl # --with-phpgpio -> check for lib and symbol presence
  dnl LIBNAME=phpgpio # you may want to change this
  dnl LIBSYMBOL=phpgpio # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $PHPGPIO_DIR/lib, PHPGPIO_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_PHPGPIOLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong phpgpio lib version or lib not found])
  dnl ],[
  dnl   -L$PHPGPIO_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(PHPGPIO_SHARED_LIBADD)

  PHP_NEW_EXTENSION(phpgpio, phpgpio.c, $ext_shared)
fi
