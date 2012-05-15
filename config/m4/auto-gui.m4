# Generated by make-data-gui on 2012/04/11 04:16:07 +0000

#
# ABINIT GUI support for the "configure" script
#

#
# IMPORTANT NOTE
#
# This file has been automatically generated by the make-data-gui
# script. If you try to edit it, your changes will systematically be
# overwritten.
#



# ABI_GUI_INIT()
# --------------
#
# Defines whether the Abinit GUI may be built along with the package.
#
AC_DEFUN([ABI_GUI_INIT],[
  dnl Init
  abi_gui_mode="data"


  case "${abi_gui_mode}" in
    data)
      AC_MSG_NOTICE([the Abinit GUI will never be built])
      ;;
    subsystem)
      AC_MSG_NOTICE([the Abinit GUI may be built upon request])
      ;;
  esac

  AM_CONDITIONAL([DO_BUILD_GUI],[test "${enable_gui_build}" = "yes"])
]) # ABI_GUI_INIT