# ===========================================================================
#      URL
# ===========================================================================
#
# SYNOPSIS
#
#   AX_FLTK_DEVEL()
#
# DESCRIPTION
#
#
# LICENSE
#

AU_ALIAS([AC_FLTK_DEVEL], [AX_FLTK_DEVEL])
AC_DEFUN([AX_FLTK_DEVEL],
[
    AC_ARG_WITH(fltk,
        [  --with-fltk-config=PATH	Specify the path to the fltk-config utility])

    if test -z "$with_fltk"; then
	    AC_PATH_PROG([fltk],[fltk-config])
        AC_MSG_NOTICE([No path to fltk-config specified. From PATH, using: $fltk])
    else
        AC_SUBST([fltk],$with_fltk)
    fi

	if test -z "$fltk"; then
	   AC_MSG_ERROR([Cannot find fltk-config in your system path])
	fi

	# compiler flags
    FLTK_CFLAGS=`$fltk --use-gl --cxxflags`
	AC_SUBST([FLTK_CFLAGS])

	# linking flags
    FLTK_LDFLAGS=`$fltk --use-gl --ldflags`
	AC_SUBST([FLTK_LDFLAGS])
])
