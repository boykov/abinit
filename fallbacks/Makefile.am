#                                                          -*- Automake -*-
# Makefile for ABINIT
# Generated by make-makefiles-fallbacks on 2012/04/11 04:16:05 +0000

#
# IMPORTANT NOTE
#
# Any manual change to this file will systematically be overwritten.
# Please modify the make-makefiles-fallbacks script or its config file instead.
#

INCLUDES = -I$(fallbacks_instdir)/include

-include config.mk

all-local:
	-$(MAKE) fox
	@echo 'Checking build of fox fallback'
	test -e stamps/fox-install-stamp
	-$(MAKE) libxc
	@echo 'Checking build of libxc fallback'
	test -e stamps/libxc-install-stamp
	-$(MAKE) linalg
	@echo 'Checking build of linalg fallback'
	test -e stamps/linalg-install-stamp
	-$(MAKE) netcdf
	@echo 'Checking build of netcdf fallback'
	test -e stamps/netcdf-install-stamp
	-$(MAKE) etsf_io
	@echo 'Checking build of etsf_io fallback'
	test -e stamps/etsf_io-install-stamp
	-$(MAKE) atompaw
	@echo 'Checking build of atompaw fallback'
	test -e stamps/atompaw-install-stamp
	-$(MAKE) wannier90
	@echo 'Checking build of wannier90 fallback'
	test -e stamps/wannier90-install-stamp
	-$(MAKE) bigdft
	@echo 'Checking build of bigdft fallback'
	test -e stamps/bigdft-install-stamp

                    ########################################

# Package: fox
fox_pkg_name = @fox_pkg_name@

if DO_BUILD_FOX
fox: stamps/fox-install-stamp

stamps/fox-install-stamp: stamps/fox-build-stamp
	cd sources/$(fox_pkg_name) && $(MAKE) install @SET_MAKE@
	@touch stamps/fox-install-stamp

stamps/fox-build-stamp: stamps/fox-config-stamp
	cd sources/$(fox_pkg_name) && $(MAKE) @SET_MAKE@
	@touch stamps/fox-build-stamp

stamps/fox-config-stamp: stamps/fox-patch-stamp
	cd sources/$(fox_pkg_name) && \
	  CPP="$(CPP)" \
	  CPPFLAGS="$(CPPFLAGS_FOX) $(INCLUDES)" \
	  CC="$(CC)" \
	  CFLAGS="$(CFLAGS_FOX)" \
	  CXX="$(CXX)" \
	  CXXFLAGS="$(CXXFLAGS_FOX)" \
          FCCPP="$(TRUE_CPP)" \
	  F77="$(FC)" \
	  FFLAGS="$(FCFLAGS_FIXEDFORM) $(FCFLAGS_FOX_EXT) $(FCFLAGS_FOX) $(INCLUDES)" \
	  F90="$(FC)" \
	  F90FLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_FOX_EXT) $(FCFLAGS_FOX) $(INCLUDES)" \
	  FC="$(FC)" \
	  FCFLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_FOX_EXT) $(FCFLAGS_FOX) $(INCLUDES)" \
	  LDFLAGS="$(FC_LDFLAGS_EXTRA) $(LDFLAGS_FOX)" \
	  LIBS="$(LIBS_FOX)" \
	  AR="$(AR)" \
	  ARFLAGS="$(ARFLAGS)" \
	  RANLIB="$(RANLIB)" \
	  /bin/sh ./configure \
	    --prefix="$(fallbacks_instdir)" \
	    --program-suffix="-abinit" \
	    $(CFGFLAGS_FOX)
	@touch stamps/fox-config-stamp

stamps/fox-patch-stamp: stamps/fox-unfold-stamp
	$(PATCH) -d sources/$(fox_pkg_name) -p1 <$(top_srcdir)/patches/FoX-4.1.2-0001.patch
	@touch stamps/fox-patch-stamp

stamps/fox-unfold-stamp:
	cd sources && \
	  gzip -cd $(abinit_tardir)/$(fox_pkg_name).tar.gz | tar xf -
	@touch stamps/fox-unfold-stamp
else
fox:
	@echo "The build of fox has been disabled"
	@touch stamps/fox-install-stamp
endif

                    ########################################

# Package clean-up: fox
clean_fox:
	rm -rf sources/FoX-4.1.2 stamps/fox-*
	rm -rf exports/bin/FoX-config-abinit
	rm -rf exports/lib/libFoX_common.a exports/lib/libFoX_fsys.a exports/lib/libFoX_utils.a exports/lib/libFoX_sax.a


                    ########################################

# Package: libxc
libxc_pkg_name = @libxc_pkg_name@

if DO_BUILD_LIBXC
libxc: stamps/libxc-install-stamp

stamps/libxc-install-stamp: stamps/libxc-build-stamp
	cd sources/$(libxc_pkg_name) && $(MAKE) install @SET_MAKE@
	@touch stamps/libxc-install-stamp

stamps/libxc-build-stamp: stamps/libxc-config-stamp
	cd sources/$(libxc_pkg_name) && $(MAKE) @SET_MAKE@
	@touch stamps/libxc-build-stamp

stamps/libxc-config-stamp: stamps/libxc-patch-stamp
	cd sources/$(libxc_pkg_name) && \
	  CPP="$(CPP)" \
	  CPPFLAGS="$(CPPFLAGS_LIBXC) $(INCLUDES)" \
	  CC="$(CC)" \
	  CFLAGS="$(CFLAGS_LIBXC)" \
	  CXX="$(CXX)" \
	  CXXFLAGS="$(CXXFLAGS_LIBXC)" \
          FCCPP="$(TRUE_CPP)" \
	  F77="$(FC)" \
	  FFLAGS="$(FCFLAGS_FIXEDFORM) $(FCFLAGS_LIBXC_EXT) $(FCFLAGS_LIBXC) $(INCLUDES)" \
	  F90="$(FC)" \
	  F90FLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_LIBXC_EXT) $(FCFLAGS_LIBXC) $(INCLUDES)" \
	  FC="$(FC)" \
	  FCFLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_LIBXC_EXT) $(FCFLAGS_LIBXC) $(INCLUDES)" \
	  LDFLAGS="$(FC_LDFLAGS_EXTRA) $(LDFLAGS_LIBXC)" \
	  LIBS="$(LIBS_LIBXC)" \
	  AR="$(AR)" \
	  ARFLAGS="$(ARFLAGS)" \
	  RANLIB="$(RANLIB)" \
	  /bin/sh ./configure \
	    --prefix="$(fallbacks_instdir)" \
	    --program-suffix="-abinit" \
	    $(CFGFLAGS_LIBXC)
	@touch stamps/libxc-config-stamp

stamps/libxc-patch-stamp: stamps/libxc-unfold-stamp
	$(PATCH) -d sources/$(libxc_pkg_name) -p1 <$(top_srcdir)/patches/libxc-1.1.0.1-0001.patch
	@touch stamps/libxc-patch-stamp

stamps/libxc-unfold-stamp:
	cd sources && \
	  gzip -cd $(abinit_tardir)/$(libxc_pkg_name).tar.gz | tar xf -
	@touch stamps/libxc-unfold-stamp
else
libxc:
	@echo "The build of libxc has been disabled"
	@touch stamps/libxc-install-stamp
endif

                    ########################################

# Package clean-up: libxc
clean_libxc:
	rm -rf sources/libxc-1.1.0.1 stamps/libxc-*
	rm -rf exports/include/xc.h exports/include/xc_config.h exports/include/xc_funcs.h
	rm -rf exports/lib/libxc.a
	rm -rf exports/include/libxc_funcs_m.mod exports/include/xc_f90_lib_m.mod exports/include/xc_f90_types_m.mod


                    ########################################

# Package: linalg
linalg_pkg_name = @linalg_pkg_name@

if DO_BUILD_LINALG
linalg: stamps/linalg-install-stamp

stamps/linalg-install-stamp: stamps/linalg-build-stamp
	cd sources/$(linalg_pkg_name) && $(MAKE) install @SET_MAKE@
	@touch stamps/linalg-install-stamp

stamps/linalg-build-stamp: stamps/linalg-config-stamp
	cd sources/$(linalg_pkg_name) && $(MAKE) @SET_MAKE@
	@touch stamps/linalg-build-stamp

stamps/linalg-config-stamp: stamps/linalg-patch-stamp
	cd sources/$(linalg_pkg_name) && \
	  CPP="$(CPP)" \
	  CPPFLAGS="$(CPPFLAGS_LINALG) $(INCLUDES)" \
	  CC="$(CC)" \
	  CFLAGS="$(CFLAGS_LINALG)" \
	  CXX="$(CXX)" \
	  CXXFLAGS="$(CXXFLAGS_LINALG)" \
          FCCPP="$(TRUE_CPP)" \
	  F77="$(FC)" \
	  FFLAGS="$(FCFLAGS_FIXEDFORM) $(FCFLAGS_LINALG_EXT) $(FCFLAGS_LINALG) $(INCLUDES)" \
	  F90="$(FC)" \
	  F90FLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_LINALG_EXT) $(FCFLAGS_LINALG) $(INCLUDES)" \
	  FC="$(FC)" \
	  FCFLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_LINALG_EXT) $(FCFLAGS_LINALG) $(INCLUDES)" \
	  LDFLAGS="$(FC_LDFLAGS_EXTRA) $(LDFLAGS_LINALG)" \
	  LIBS="$(LIBS_LINALG)" \
	  AR="$(AR)" \
	  ARFLAGS="$(ARFLAGS)" \
	  RANLIB="$(RANLIB)" \
	  /bin/sh ./configure \
	    --prefix="$(fallbacks_instdir)" \
	    --program-suffix="-abinit" \
	    $(CFGFLAGS_LINALG)
	@touch stamps/linalg-config-stamp

stamps/linalg-patch-stamp: stamps/linalg-unfold-stamp
	@echo "No patch to apply"
	@touch stamps/linalg-patch-stamp

stamps/linalg-unfold-stamp:
	cd sources && \
	  gzip -cd $(abinit_tardir)/$(linalg_pkg_name).tar.gz | tar xf -
	@touch stamps/linalg-unfold-stamp
else
linalg:
	@echo "The build of linalg has been disabled"
	@touch stamps/linalg-install-stamp
endif

                    ########################################

# Package clean-up: linalg
clean_linalg:
	rm -rf sources/lapack-abinit_6.10 stamps/linalg-*
	rm -rf exports/lib/libblas.a exports/lib/liblapack.a


                    ########################################

# Package: netcdf
netcdf_pkg_name = @netcdf_pkg_name@

if DO_BUILD_NETCDF
netcdf: stamps/netcdf-install-stamp

stamps/netcdf-install-stamp: stamps/netcdf-build-stamp
	cd sources/$(netcdf_pkg_name) && $(MAKE) install @SET_MAKE@
	@touch stamps/netcdf-install-stamp

stamps/netcdf-build-stamp: stamps/netcdf-config-stamp
	cd sources/$(netcdf_pkg_name) && $(MAKE) @SET_MAKE@
	@touch stamps/netcdf-build-stamp

stamps/netcdf-config-stamp: stamps/netcdf-patch-stamp
	cd sources/$(netcdf_pkg_name) && \
	  CPP="$(CPP)" \
	  CPPFLAGS="$(CPPFLAGS_NETCDF) $(INCLUDES)" \
	  CC="$(CC)" \
	  CFLAGS="$(CFLAGS_NETCDF)" \
	  CXX="$(CXX)" \
	  CXXFLAGS="$(CXXFLAGS_NETCDF)" \
          FCCPP="$(TRUE_CPP)" \
	  F77="$(FC)" \
	  FFLAGS="$(FCFLAGS_FIXEDFORM) $(FCFLAGS_NETCDF_EXT) $(FCFLAGS_NETCDF) $(INCLUDES)" \
	  F90="$(FC)" \
	  F90FLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_NETCDF_EXT) $(FCFLAGS_NETCDF) $(INCLUDES)" \
	  FC="$(FC)" \
	  FCFLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_NETCDF_EXT) $(FCFLAGS_NETCDF) $(INCLUDES)" \
	  LDFLAGS="$(FC_LDFLAGS_EXTRA) $(LDFLAGS_NETCDF)" \
	  LIBS="$(LIBS_NETCDF)" \
	  AR="$(AR)" \
	  ARFLAGS="$(ARFLAGS)" \
	  RANLIB="$(RANLIB)" \
	  /bin/sh ./configure \
	    --prefix="$(fallbacks_instdir)" \
	    --program-suffix="-abinit" \
	    $(CFGFLAGS_NETCDF)
	@touch stamps/netcdf-config-stamp

stamps/netcdf-patch-stamp: stamps/netcdf-unfold-stamp
	@echo "No patch to apply"
	@touch stamps/netcdf-patch-stamp

stamps/netcdf-unfold-stamp:
	cd sources && \
	  gzip -cd $(abinit_tardir)/$(netcdf_pkg_name).tar.gz | tar xf -
	@touch stamps/netcdf-unfold-stamp
else
netcdf:
	@echo "The build of netcdf has been disabled"
	@touch stamps/netcdf-install-stamp
endif

                    ########################################

# Package clean-up: netcdf
clean_netcdf:
	rm -rf sources/netcdf-4.1.1 stamps/netcdf-*
	rm -rf exports/bin/nc-config-abinit exports/bin/nccopy-abinit exports/bin/ncdump-abinit exports/bin/ncgen-abinit exports/bin/ncgen3-abinit
	rm -rf exports/include/netcdf.h
	rm -rf exports/lib/libnetcdf.a exports/lib/libnetcdf.la
	rm -rf exports/include/netcdf.inc exports/include/netcdf.mod exports/include/typesizes.mod


                    ########################################

# Package: etsf_io
etsf_io_pkg_name = @etsf_io_pkg_name@

if DO_BUILD_ETSF_IO
etsf_io: stamps/etsf_io-install-stamp

stamps/etsf_io-install-stamp: stamps/etsf_io-build-stamp
	cd sources/$(etsf_io_pkg_name) && $(MAKE) install @SET_MAKE@
	@touch stamps/etsf_io-install-stamp

stamps/etsf_io-build-stamp: stamps/etsf_io-config-stamp
	cd sources/$(etsf_io_pkg_name) && $(MAKE) @SET_MAKE@
	@touch stamps/etsf_io-build-stamp

stamps/etsf_io-config-stamp: stamps/etsf_io-patch-stamp
	cd sources/$(etsf_io_pkg_name) && \
	  CPP="$(CPP)" \
	  CPPFLAGS="$(CPPFLAGS_ETSF_IO) $(INCLUDES)" \
	  CC="$(CC)" \
	  CFLAGS="$(CFLAGS_ETSF_IO)" \
	  CXX="$(CXX)" \
	  CXXFLAGS="$(CXXFLAGS_ETSF_IO)" \
          FCCPP="$(TRUE_CPP)" \
	  F77="$(FC)" \
	  FFLAGS="$(FCFLAGS_FIXEDFORM) $(FCFLAGS_ETSF_IO_EXT) $(FCFLAGS_ETSF_IO) $(INCLUDES)" \
	  F90="$(FC)" \
	  F90FLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_ETSF_IO_EXT) $(FCFLAGS_ETSF_IO) $(INCLUDES)" \
	  FC="$(FC)" \
	  FCFLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_ETSF_IO_EXT) $(FCFLAGS_ETSF_IO) $(INCLUDES)" \
	  LDFLAGS="$(FC_LDFLAGS_EXTRA) $(LDFLAGS_ETSF_IO)" \
	  LIBS="$(LIBS_ETSF_IO)" \
	  AR="$(AR)" \
	  ARFLAGS="$(ARFLAGS)" \
	  RANLIB="$(RANLIB)" \
	  /bin/sh ./configure \
	    --prefix="$(fallbacks_instdir)" \
	    --program-suffix="-abinit" \
	    $(CFGFLAGS_ETSF_IO)
	@touch stamps/etsf_io-config-stamp

stamps/etsf_io-patch-stamp: stamps/etsf_io-unfold-stamp
	@echo "No patch to apply"
	@touch stamps/etsf_io-patch-stamp

stamps/etsf_io-unfold-stamp:
	cd sources && \
	  gzip -cd $(abinit_tardir)/$(etsf_io_pkg_name).tar.gz | tar xf -
	@touch stamps/etsf_io-unfold-stamp
else
etsf_io:
	@echo "The build of etsf_io has been disabled"
	@touch stamps/etsf_io-install-stamp
endif

                    ########################################

# Package clean-up: etsf_io
clean_etsf_io:
	rm -rf sources/etsf_io-1.0.4 stamps/etsf_io-*
	rm -rf exports/bin/etsf_io-abinit
	rm -rf exports/lib/libetsf_io.a exports/lib/libetsf_io_utils.a exports/lib/libetsf_io_low_level.a


                    ########################################

# Package: atompaw
atompaw_pkg_name = @atompaw_pkg_name@

if DO_BUILD_ATOMPAW
atompaw: stamps/atompaw-install-stamp

stamps/atompaw-install-stamp: stamps/atompaw-build-stamp
	cd sources/$(atompaw_pkg_name) && $(MAKE) install @SET_MAKE@
	@touch stamps/atompaw-install-stamp

stamps/atompaw-build-stamp: stamps/atompaw-config-stamp
	cd sources/$(atompaw_pkg_name) && $(MAKE) @SET_MAKE@
	@touch stamps/atompaw-build-stamp

stamps/atompaw-config-stamp: stamps/atompaw-patch-stamp
	cd sources/$(atompaw_pkg_name) && \
	  CPP="$(CPP)" \
	  CPPFLAGS="$(CPPFLAGS_ATOMPAW) $(INCLUDES)" \
	  CC="$(CC)" \
	  CFLAGS="$(CFLAGS_ATOMPAW)" \
	  CXX="$(CXX)" \
	  CXXFLAGS="$(CXXFLAGS_ATOMPAW)" \
          FCCPP="$(TRUE_CPP)" \
	  F77="$(FC)" \
	  FFLAGS="$(FCFLAGS_FIXEDFORM) $(FCFLAGS_ATOMPAW_EXT) $(FCFLAGS_ATOMPAW) $(INCLUDES)" \
	  F90="$(FC)" \
	  F90FLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_ATOMPAW_EXT) $(FCFLAGS_ATOMPAW) $(INCLUDES)" \
	  FC="$(FC)" \
	  FCFLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_ATOMPAW_EXT) $(FCFLAGS_ATOMPAW) $(INCLUDES)" \
	  LDFLAGS="$(FC_LDFLAGS_EXTRA) $(LDFLAGS_ATOMPAW)" \
	  LIBS="$(LIBS_ATOMPAW)" \
	  AR="$(AR)" \
	  ARFLAGS="$(ARFLAGS)" \
	  RANLIB="$(RANLIB)" \
	  /bin/sh ./configure \
	    --prefix="$(fallbacks_instdir)" \
	    --program-suffix="-abinit" \
	    $(CFGFLAGS_ATOMPAW)
	@touch stamps/atompaw-config-stamp

stamps/atompaw-patch-stamp: stamps/atompaw-unfold-stamp
	$(PATCH) -d sources/$(atompaw_pkg_name) -p1 <$(top_srcdir)/patches/atompaw-3.0.1.3-0001.patch
	@touch stamps/atompaw-patch-stamp

stamps/atompaw-unfold-stamp:
	cd sources && \
	  gzip -cd $(abinit_tardir)/$(atompaw_pkg_name).tar.gz | tar xf -
	@touch stamps/atompaw-unfold-stamp
else
atompaw:
	@echo "The build of atompaw has been disabled"
	@touch stamps/atompaw-install-stamp
endif

                    ########################################

# Package clean-up: atompaw
clean_atompaw:
	rm -rf sources/atompaw-3.0.1.3 stamps/atompaw-*
	rm -rf exports/bin/atompaw-abinit exports/bin/graphatom-abinit
	rm -rf exports/lib/libatompaw.a


                    ########################################

# Package: wannier90
wannier90_pkg_name = @wannier90_pkg_name@

if DO_BUILD_WANNIER90
wannier90: stamps/wannier90-install-stamp

stamps/wannier90-install-stamp: stamps/wannier90-build-stamp
	cd sources/$(wannier90_pkg_name) && $(MAKE) install @SET_MAKE@
	@touch stamps/wannier90-install-stamp

stamps/wannier90-build-stamp: stamps/wannier90-config-stamp
	cd sources/$(wannier90_pkg_name) && $(MAKE) @SET_MAKE@
	@touch stamps/wannier90-build-stamp

stamps/wannier90-config-stamp: stamps/wannier90-patch-stamp
	cd sources/$(wannier90_pkg_name) && \
	  CPP="$(CPP)" \
	  CPPFLAGS="$(CPPFLAGS_WANNIER90) $(INCLUDES)" \
	  CC="$(CC)" \
	  CFLAGS="$(CFLAGS_WANNIER90)" \
	  CXX="$(CXX)" \
	  CXXFLAGS="$(CXXFLAGS_WANNIER90)" \
          FCCPP="$(TRUE_CPP)" \
	  F77="$(FC)" \
	  FFLAGS="$(FCFLAGS_FIXEDFORM) $(FCFLAGS_WANNIER90_EXT) $(FCFLAGS_WANNIER90) $(INCLUDES)" \
	  F90="$(FC)" \
	  F90FLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_WANNIER90_EXT) $(FCFLAGS_WANNIER90) $(INCLUDES)" \
	  FC="$(FC)" \
	  FCFLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_WANNIER90_EXT) $(FCFLAGS_WANNIER90) $(INCLUDES)" \
	  LDFLAGS="$(FC_LDFLAGS_EXTRA) $(LDFLAGS_WANNIER90)" \
	  LIBS="$(LIBS_WANNIER90)" \
	  AR="$(AR)" \
	  ARFLAGS="$(ARFLAGS)" \
	  RANLIB="$(RANLIB)" \
	  /bin/sh ./configure \
	    --prefix="$(fallbacks_instdir)" \
	    --program-suffix="-abinit" \
	    $(CFGFLAGS_WANNIER90)
	@touch stamps/wannier90-config-stamp

stamps/wannier90-patch-stamp: stamps/wannier90-unfold-stamp
	@echo "No patch to apply"
	@touch stamps/wannier90-patch-stamp

stamps/wannier90-unfold-stamp:
	cd sources && \
	  gzip -cd $(abinit_tardir)/$(wannier90_pkg_name).tar.gz | tar xf -
	@touch stamps/wannier90-unfold-stamp
else
wannier90:
	@echo "The build of wannier90 has been disabled"
	@touch stamps/wannier90-install-stamp
endif

                    ########################################

# Package clean-up: wannier90
clean_wannier90:
	rm -rf sources/wannier90-1.2.0.1 stamps/wannier90-*
	rm -rf exports/bin/wannier90.x-abinit
	rm -rf exports/lib/libwannier90.a


                    ########################################

# Package: bigdft
bigdft_pkg_name = @bigdft_pkg_name@

if DO_BUILD_BIGDFT
bigdft: stamps/bigdft-install-stamp

stamps/bigdft-install-stamp: stamps/bigdft-build-stamp
	cd sources/$(bigdft_pkg_name) && $(MAKE) install @SET_MAKE@
	@touch stamps/bigdft-install-stamp

stamps/bigdft-build-stamp: stamps/bigdft-config-stamp
	cd sources/$(bigdft_pkg_name) && $(MAKE) @SET_MAKE@
	@touch stamps/bigdft-build-stamp

stamps/bigdft-config-stamp: stamps/bigdft-patch-stamp
	cd sources/$(bigdft_pkg_name) && \
	  CPP="$(CPP)" \
	  CPPFLAGS="$(CPPFLAGS_BIGDFT) $(INCLUDES)" \
	  CC="$(CC)" \
	  CFLAGS="$(CFLAGS_BIGDFT)" \
	  CXX="$(CXX)" \
	  CXXFLAGS="$(CXXFLAGS_BIGDFT)" \
          FCCPP="$(TRUE_CPP)" \
	  F77="$(FC)" \
	  FFLAGS="$(FCFLAGS_FIXEDFORM) $(FCFLAGS_BIGDFT_EXT) $(FCFLAGS_BIGDFT) $(INCLUDES)" \
	  F90="$(FC)" \
	  F90FLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_BIGDFT_EXT) $(FCFLAGS_BIGDFT) $(INCLUDES)" \
	  FC="$(FC)" \
	  FCFLAGS="$(FCFLAGS_FREEFORM) $(FCFLAGS_BIGDFT_EXT) $(FCFLAGS_BIGDFT) $(INCLUDES)" \
	  LDFLAGS="$(FC_LDFLAGS_EXTRA) $(LDFLAGS_BIGDFT)" \
	  LIBS="$(LIBS_BIGDFT)" \
	  AR="$(AR)" \
	  ARFLAGS="$(ARFLAGS)" \
	  RANLIB="$(RANLIB)" \
	  /bin/sh ./configure \
	    --prefix="$(fallbacks_instdir)" \
	    --program-suffix="-abinit" \
	    $(CFGFLAGS_BIGDFT)
	@touch stamps/bigdft-config-stamp

stamps/bigdft-patch-stamp: stamps/bigdft-unfold-stamp
	@echo "No patch to apply"
	@touch stamps/bigdft-patch-stamp

stamps/bigdft-unfold-stamp:
	cd sources && \
	  gzip -cd $(abinit_tardir)/$(bigdft_pkg_name).tar.gz | tar xf -
	@touch stamps/bigdft-unfold-stamp
else
bigdft:
	@echo "The build of bigdft has been disabled"
	@touch stamps/bigdft-install-stamp
endif

                    ########################################

# Package clean-up: bigdft
clean_bigdft:
	rm -rf sources/bigdft-1.6-tuto.1 stamps/bigdft-*
	rm -rf exports/lib/libabinit.a exports/lib/libpoissonsolver.a exports/lib/libbigdft.a


                    ########################################
                    ########################################

check-local:
	-cd sources/$(fox_pkg_name) && $(MAKE) check @SET_MAKE@
	-cd sources/$(libxc_pkg_name) && $(MAKE) check @SET_MAKE@
	-cd sources/$(linalg_pkg_name) && $(MAKE) check @SET_MAKE@
	-cd sources/$(netcdf_pkg_name) && $(MAKE) check @SET_MAKE@
	-cd sources/$(etsf_io_pkg_name) && $(MAKE) check @SET_MAKE@
	-cd sources/$(atompaw_pkg_name) && $(MAKE) check @SET_MAKE@
	-cd sources/$(wannier90_pkg_name) && $(MAKE) check @SET_MAKE@
	-cd sources/$(bigdft_pkg_name) && $(MAKE) check @SET_MAKE@

clean-local:
	rm -rf sources/* exports/* stamps/*

EXTRA_DIST = \
	patches/wannier90-1.2-0002.patch \
	patches/bigdft-1.2.0.2-0001.patch \
	patches/libxc-1.1.0.1-0001.patch \
	patches/bigdft-1.2.0.2-0002.patch \
	patches/FoX-4.1.2-0001.patch \
	patches/FoX-4.1.0-0001.patch \
	patches/wannier90-1.2-0001.patch \
	patches/bigdft-1.2.0.2-0004.patch \
	patches/bigdft-1.2.0.5-0001.patch \
	patches/wannier90-1.2-0003.patch \
	patches/atompaw-3.0.1.3-0001.patch \
	patches/atompaw-3.0.1.2-0001.patch \
	patches/bigdft-1.2.0.2-0005.patch \
	patches/bigdft-1.2.0.2-0003.patch \
	transient/lapack-abinit_6.10.tar.gz

