# Makefile generated by imake - do not edit!
# $XConsortium: imake.c,v 1.91 95/01/12 16:15:47 kaleb Exp $

# ----------------------------------------------------------------------
# Makefile generated from "Imake.tmpl" and <Imakefile>
# $XConsortium: Imake.tmpl,v 1.224 94/12/27 03:57:50 gildea Exp $
# $XFree86: xc/config/cf/Imake.tmpl,v 3.8 1995/01/25 10:42:43 dawes Exp $
#

.SUFFIXES: .i

# $XConsortium: Imake.cf,v 1.19 95/01/05 19:24:32 kaleb Exp $
# $XFree86: xc/config/cf/Imake.cf,v 3.13 1995/01/28 15:40:15 dawes Exp $

# -----------------------------------------------------------------------
# site-specific configuration parameters that need to come before
# the platform-specific parameters - edit site.def to change

# site:  $XConsortium: site.sample,v 1.9 94/04/08 17:02:06 rws Exp $
# site:  $XFree86: xc/config/cf/site.def,v 3.7 1995/01/04 04:36:01 dawes Exp $

# $XFree86: xc/config/cf/xf86site.def,v 3.35 1995/01/25 11:17:10 dawes Exp $

# -----------------------------------------------------------------------
# platform-specific configuration parameters - edit linux.cf to change

# platform:  $XConsortium: linux.cf,v 1.11 95/01/23 18:32:03 kaleb Exp $
# platform:  $XFree86: xc/config/cf/linux.cf,v 3.22 1995/01/28 15:40:22 dawes Exp $

# $XConsortium: lnxLib.rules,v 1.8 95/01/16 21:11:00 kaleb Exp $
# $XFree86: xc/config/cf/lnxLib.rules,v 3.11 1995/01/28 15:40:25 dawes Exp $

# $XConsortium: xfree86.cf,v 1.9 95/01/25 16:42:40 kaleb Exp $
# $XFree86: xc/config/cf/xfree86.cf,v 3.48 1995/01/28 15:40:38 dawes Exp $

LINKKITDIR = $(USRLIBDIR)/Server

       XF86SRC = $(SERVERSRC)/hw/xfree86
  XF86ACCELSRC = $(XF86SRC)/accel
    XF86COMSRC = $(XF86SRC)/common
 XF86CONFIGSRC = $(XF86COMSRC)
     XF86HWSRC = $(XF86SRC)/common_hw
     XF86OSSRC = $(XF86SRC)/os-support
  VGADRIVERSRC = $(XF86SRC)/vga256/drivers
VGA16DRIVERSRC = $(XF86SRC)/vga16/drivers
 VGA2DRIVERSRC = $(XF86SRC)/vga2/drivers
 MONODRIVERSRC = $(XF86SRC)/mono/drivers
   S3DRIVERSRC = $(XF86SRC)/accel/s3/drivers

XF86INIT   = $(XF86COMSRC)/xf86Init.o
XF86MINIT  = $(XF86COMSRC)/xf86Init_m.o
XF86CONFIG = $(XF86CONFIGSRC)/xf86_Option.o
XF86COMLIB = $(XF86COMSRC)/libxf86.a
XF86OSLIB  = $(XF86OSSRC)/libxf86_os.a
XF86HWLIB  = $(XF86HWSRC)/libxf86_hw.a
XF86LIBS   = $(XF86INIT) $(XF86CONFIG) $(XF86COMLIB) $(XF86HWLIB) $(XF86OSLIB)
XF86MLIBS  = $(XF86MINIT) $(XF86CONFIG) $(XF86COMLIB) $(XF86HWLIB) $(XF86OSLIB)

        XFREE86DOCDIR = $(LIBDIR)/doc
      XFREE86PSDOCDIR = $(XFREE86DOCDIR)/PostScript
    XFREE86HTMLDOCDIR = $(XFREE86DOCDIR)/html
XFREE86JAPANESEDOCDIR = $(XFREE86DOCDIR)/Japanese

# $XConsortium: xf86.rules,v 1.7 95/01/25 16:34:39 kaleb Exp $
# $XFree86: xc/config/cf/xf86.rules,v 3.7 1995/01/28 15:40:36 dawes Exp $

# -----------------------------------------------------------------------
# site-specific configuration parameters that go after
# the platform-specific parameters - edit site.def to change

# site:  $XConsortium: site.sample,v 1.9 94/04/08 17:02:06 rws Exp $
# site:  $XFree86: xc/config/cf/site.def,v 3.7 1995/01/04 04:36:01 dawes Exp $

# -----------------------------------------------------------------------
# Imake rules for building libraries, programs, scripts, and data files
# rules:  $XConsortium: Imake.rules,v 1.197 94/12/05 19:30:41 gildea Exp $
# rules:  $XFree86: xc/config/cf/Imake.rules,v 3.11 1995/01/14 10:39:25 dawes Exp $

 _NULLCMD_ = @ echo -n

          PATHSEP = /
            SHELL = /bin/sh

              TOP = .
      CURRENT_DIR = .

            IMAKE = imake
           DEPEND = gccmakedep
        MKDIRHIER = mkdirhier
        CONFIGSRC = $(TOP)/config
         IMAKESRC = $(CONFIGSRC)/imake
        DEPENDSRC = $(CONFIGSRC)/util
           IXXSRC = $(UNSUPPORTEDSRC)/programs/ixx
              IXX = ixx
         IXXFLAGS = -s BaseObject -m TypeObj -r RequestObj -p Xf
      IXXINCLUDES = -i '<X11/Fresco/enter-scope.h>'

          INCROOT = /usr/X11R6/include
        USRLIBDIR = /usr/X11R6/lib
         SHLIBDIR = /usr/X11R6/lib
       LINTLIBDIR = $(USRLIBDIR)/lint
          MANPATH = /usr/X11R6/man
    MANSOURCEPATH = $(MANPATH)/man
           MANDIR = $(MANSOURCEPATH)1
        LIBMANDIR = $(MANSOURCEPATH)3
       FILEMANDIR = $(MANSOURCEPATH)5

               AR = ar clq
  BOOTSTRAPCFLAGS =
               CC = gcc
               AS = as

.SUFFIXES: .cxx

              CXX = g++
    CXXDEBUGFLAGS = -O2  -std=c90 -g
 CXXEXTRA_DEFINES =
CXXEXTRA_INCLUDES =
  CXXIDL_INCLUDES = -I$(TOP)/include
   CXXSTD_DEFINES = -Dlinux -D__i386__ -D_POSIX_SOURCE -D_BSD_SOURCE -D_GNU_SOURCE -DX_LOCALE
       CXXOPTIONS =
      CXXINCLUDES = $(INCLUDES) $(TOP_INCLUDES) $(CXXEXTRA_INCLUDES) $(CXXIDL_INCLUDES)
       CXXDEFINES = $(CXXINCLUDES) $(CXXSTD_DEFINES) $(THREADS_CXXDEFINES) $(CXXEXTRA_DEFINES)
         CXXFLAGS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(THREADS_CXXFLAGS) $(CXXDEFINES)

         COMPRESS = compress
              CPP = /lib/cpp $(STD_CPP_DEFINES)
    PREPROCESSCMD = gcc -E $(STD_CPP_DEFINES)
          INSTALL = install
     INSTALLFLAGS = -c
               LD = ld
              LEX = flex -l
           LEXLIB = -lfl
             YACC = bison -y
           CCYACC = bison -y
             LINT = lint
      LINTLIBFLAG = -C
         LINTOPTS = -axz
               LN = ln -s
             MAKE = make
               MV = mv
               CP = cp

           RANLIB = ranlib
  RANLIBINSTFLAGS =

               RM = rm -f
        MANSUFFIX = 1x
     LIBMANSUFFIX = 3x
    FILEMANSUFFIX = 5x
            TROFF = psroff
         MSMACROS = -ms
              TBL = tbl
              EQN = eqn

            DVIPS = dvips
            LATEX = latex

     STD_INCLUDES =
  STD_CPP_DEFINES = -traditional -Dlinux -D__i386__ -D_POSIX_SOURCE -D_BSD_SOURCE -D_GNU_SOURCE -DX_LOCALE
      STD_DEFINES = -Dlinux -D__i386__ -D_POSIX_SOURCE -D_BSD_SOURCE -D_GNU_SOURCE -DX_LOCALE
 EXTRA_LOAD_FLAGS =
  EXTRA_LDOPTIONS =
  EXTRA_LIBRARIES =
             TAGS = ctags

    SHAREDCODEDEF =
         SHLIBDEF =

     SHLIBLDFLAGS =

         PICFLAGS = -B/usr/bin/jump

      CXXPICFLAGS = -B/usr/bin/jump

    PROTO_DEFINES = -DFUNCPROTO=15 -DNARROWPROTO

     INSTPGMFLAGS = -s

     INSTBINFLAGS = -m 0755
     INSTUIDFLAGS = -m 4755
     INSTLIBFLAGS = -m 0644
     INSTINCFLAGS = -m 0444
     INSTMANFLAGS = -m 0444
     INSTDATFLAGS = -m 0444
    INSTKMEMFLAGS = -m 4755

      PROJECTROOT = /usr/X11R6

     TOP_INCLUDES = -I$(INCROOT)

      CDEBUGFLAGS = -O2  -std=c90 -g
        CCOPTIONS = -ansi

      ALLINCLUDES = $(INCLUDES) $(EXTRA_INCLUDES) $(TOP_INCLUDES) $(STD_INCLUDES)
       ALLDEFINES = $(ALLINCLUDES) $(STD_DEFINES) $(EXTRA_DEFINES) $(PROTO_DEFINES) $(THREADS_DEFINES) $(DEFINES)
           CFLAGS = $(CDEBUGFLAGS) $(CCOPTIONS) $(THREADS_CFLAGS) $(ALLDEFINES)
        LINTFLAGS = $(LINTOPTS) -DLINT $(ALLDEFINES) $(DEPEND_DEFINES)
         LDPRELIB = -L$(USRLIBDIR)
        LDPOSTLIB =
        LDOPTIONS = $(CDEBUGFLAGS) $(CCOPTIONS)  $(EXTRA_LDOPTIONS) $(THREADS_LDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIB)
     CXXLDOPTIONS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(EXTRA_LDOPTIONS) $(THREADS_CXXLDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIB)

           LDLIBS = $(LDPOSTLIB) $(THREADS_LIBS) $(SYS_LIBRARIES) $(EXTRA_LIBRARIES)

           CCLINK = $(CC)

          CXXLINK = $(CXX)

     LDSTRIPFLAGS = -x
   LDCOMBINEFLAGS = -r
      DEPENDFLAGS =

        MACROFILE = linux.cf
           RM_CMD = $(RM)

    IMAKE_DEFINES =

         IRULESRC = $(CONFIGDIR)
        IMAKE_CMD = $(IMAKE) -DUseInstalled -I$(IRULESRC) $(IMAKE_DEFINES)

     ICONFIGFILES = $(IRULESRC)/Imake.tmpl $(IRULESRC)/Project.tmpl 			$(IRULESRC)/site.def $(IRULESRC)/$(MACROFILE) 			$(IRULESRC)/xfree86.cf $(IRULESRC)/xf86.rules $(IRULESRC)/xf86site.def $(IRULESRC)/host.def $(EXTRA_ICONFIGFILES)

# ----------------------------------------------------------------------
# X Window System Build Parameters and Rules
# $XConsortium: Project.tmpl,v 1.248 95/01/06 19:12:51 gildea Exp $
# $XFree86: xc/config/cf/Project.tmpl,v 3.12 1995/01/25 10:42:48 dawes Exp $

# -----------------------------------------------------------------------
# X Window System make variables; these need to be coordinated with rules

           BINDIR = /usr/X11R6/bin
     BUILDINCROOT = $(TOP)
      BUILDINCDIR = $(BUILDINCROOT)/X11
      BUILDINCTOP = ..
      BUILDLIBDIR = $(TOP)/usrlib
      BUILDLIBTOP = ..
           INCDIR = $(INCROOT)/X11
           ADMDIR = /usr/adm
           LIBDIR = $(USRLIBDIR)/X11

          FONTDIR = $(LIBDIR)/fonts
         XINITDIR = $(LIBDIR)/xinit
           XDMDIR = $(LIBDIR)/xdm
           TWMDIR = $(LIBDIR)/twm
           XSMDIR = $(LIBDIR)/xsm
           NLSDIR = $(LIBDIR)/nls
       XLOCALEDIR = $(LIBDIR)/locale
        PEXAPIDIR = $(LIBDIR)/PEX
      XAPPLOADDIR = $(LIBDIR)/app-defaults
       FONTCFLAGS = -t

     INSTAPPFLAGS = $(INSTDATFLAGS)

              RGB = rgb
            FONTC = bdftopcf
        MKFONTDIR = mkfontdir

       DOCUTILSRC = $(TOP)/doc/util
       XDOCMACROS = $(DOCUTILSRC)/macros.t
       XIDXMACROS = $(DOCUTILSRC)/indexmacros.t
       PROGRAMSRC = $(TOP)/programs
           LIBSRC = $(TOP)/lib
          FONTSRC = $(TOP)/fonts
       INCLUDESRC = $(TOP)/X11
        SERVERSRC = $(TOP)/programs/Xserver
       CONTRIBSRC = $(TOP)/../contrib
   UNSUPPORTEDSRC = $(TOP)/unsupported
           DOCSRC = $(TOP)/doc
           RGBSRC = $(TOP)/programs/rgb
      BDFTOPCFSRC = $(PROGRAMSRC)/bdftopcf
     MKFONTDIRSRC = $(PROGRAMSRC)/mkfontdir
    FONTSERVERSRC = $(PROGRAMSRC)/xfs
       FONTINCSRC = $(TOP)/include/fonts
        EXTINCSRC = $(TOP)/include/extensions
     TRANSCOMMSRC = $(LIBSRC)/xtrans
   TRANS_INCLUDES = -I$(TRANSCOMMSRC)

# $XConsortium: lnxLib.tmpl,v 1.5 95/01/11 21:44:44 kaleb Exp $
# $XFree86: xc/config/cf/lnxLib.tmpl,v 3.6 1995/01/28 15:40:27 dawes Exp $

          XLIBSRC = $(LIBSRC)/X11

SOXLIBREV = 6.0
DEPXONLYLIB =
XONLYLIB =  -lX11

LINTXONLY = $(LINTLIBDIR)/llib-lX11.ln

         XLIBONLY = $(XONLYLIB)

      XEXTLIBSRC = $(LIBSRC)/Xext
   LBXXEXTLIBSRC = $(TOP)/workInProgress/lbx/lib/Xext

    XEXEXTLIBSRC = $(LIBSRC)/XExExt

SOXEXTREV = 6.0
DEPXEXTLIB =
XEXTLIB =  -lXext

LINTXEXT = $(LINTLIBDIR)/llib-lXext.ln

SOXEXTREV = 6.0
DEPLBXXEXTLIB =
LBXXEXTLIB =  -llbxXext

LINTLBXXEXT = $(LINTLIBDIR)/llib-llbxXext.ln

DEPXEXEXTLIB = #$(USRLIBDIR)/libXExExt.a
XEXEXTLIB =  #-lXExExt

LINTXEXEXT = #$(LINTLIBDIR)/llib-lXExExt.ln

     EXTENSIONLIB = $(XEXEXTLIB) $(XEXTLIB)
  DEPEXTENSIONLIB = $(DEPXEXEXTLIB) $(DEPXEXTLIB)
    LINTEXTENSION = $(LINTXEXEXT) $(LINTXEXT)

 LINTEXTENSIONLIB = $(LINTEXTENSION)
          DEPXLIB = $(DEPEXTENSIONLIB) $(DEPXONLYLIB)
             XLIB = $(EXTENSIONLIB) $(XONLYLIB)
         LINTXLIB = $(LINTXONLYLIB)

         XAUTHSRC = $(LIBSRC)/Xau

DEPXAUTHLIB = $(USRLIBDIR)/libXau.a
XAUTHLIB =  -lXau

LINTXAUTH = $(LINTLIBDIR)/llib-lXau.ln

      XDMCPLIBSRC = $(LIBSRC)/Xdmcp

DEPXDMCPLIB = $(USRLIBDIR)/libXdmcp.a
XDMCPLIB =  -lXdmcp

LINTXDMCP = $(LINTLIBDIR)/llib-lXdmcp.ln

           XMUSRC = $(LIBSRC)/Xmu

SOXMUREV = 6.0
DEPXMULIB =
XMULIB =  -lXmu

LINTXMU = $(LINTLIBDIR)/llib-lXmu.ln

       OLDXLIBSRC = $(LIBSRC)/oldX

DEPOLDXLIB = $(USRLIBDIR)/liboldX.a
OLDXLIB =  -loldX

LINTOLDX = $(LINTLIBDIR)/llib-loldX.ln

       TOOLKITSRC = $(LIBSRC)/Xt

SOXTREV = 6.0
DEPXTOOLONLYLIB =
XTOOLONLYLIB =  -lXt

LINTXTOOLONLY = $(LINTLIBDIR)/llib-lXt.ln

      DEPXTOOLLIB = $(DEPXTOOLONLYLIB) $(DEPSMLIB) $(DEPICELIB)
         XTOOLLIB = $(XTOOLONLYLIB) $(SMLIB) $(ICELIB)
     LINTXTOOLLIB = $(LINTXTOOLONLYLIB)

       AWIDGETSRC = $(LIBSRC)/Xaw

SOXAWREV = 6.0
DEPXAWLIB =
XAWLIB =  -lXaw

LINTXAW = $(LINTLIBDIR)/llib-lXaw.ln

       XTFSRC = $(TOP)/workInProgress/Xtf

SOXTFREV = 0.7
DEPXTFLIB =
XTFLIB =  -lXtf

LINTXTF = $(LINTLIBDIR)/llib-lXtf.ln

       FRESCOSRC = $(TOP)/workInProgress/Fresco

SOFRESCOREV = 0.7
DEPFRESCOLIB =
FRESCOLIB =  -lFresco

LINTFRESCO = $(LINTLIBDIR)/llib-lFresco.ln

         XILIBSRC = $(LIBSRC)/Xi

SOXINPUTREV = 6.0
DEPXILIB =
XILIB =  -lXi

LINTXI = $(LINTLIBDIR)/llib-lXi.ln

      XTESTLIBSRC = $(LIBSRC)/Xtst

SOXTESTREV = 6.0
DEPXTESTLIB =
XTESTLIB =  -lXtst

LINTXTEST = $(LINTLIBDIR)/llib-lXtst.ln

        PEXLIBSRC = $(LIBSRC)/PEX5

SOPEXREV = 6.0
DEPPEXLIB =
PEXLIB =  -lPEX5

LINTPEX = $(LINTLIBDIR)/llib-lPEX5.ln

        XIELIBSRC = $(LIBSRC)/XIE

SOXIEREV = 6.0
DEPXIELIB =
XIELIB =  -lXIE

LINTXIE = $(LINTLIBDIR)/llib-lXIE.ln

      PHIGSLIBSRC = $(LIBSRC)/PHIGS

DEPPHIGSLIB = $(USRLIBDIR)/libphigs.a
PHIGSLIB =  -lphigs

LINTPHIGS = $(LINTLIBDIR)/llib-lphigs.ln

DEPXBSDLIB = $(USRLIBDIR)/libXbsd.a
XBSDLIB =  -lXbsd

LINTXBSD = $(LINTLIBDIR)/llib-lXbsd.ln

           ICESRC = $(LIBSRC)/ICE

SOICEREV = 6.0
DEPICELIB =
ICELIB =  -lICE

LINTICE = $(LINTLIBDIR)/llib-lICE.ln

            SMSRC = $(LIBSRC)/SM

SOSMREV = 6.0
DEPSMLIB =
SMLIB =  -lSM

LINTSM = $(LINTLIBDIR)/llib-lSM.ln

         FSLIBSRC = $(LIBSRC)/FS

DEPFSLIB = $(USRLIBDIR)/libFS.a
FSLIB =  -lFS

LINTFS = $(LINTLIBDIR)/llib-lFS.ln

         FONTLIBSRC = $(LIBSRC)/font

DEPFONTLIB = $(USRLIBDIR)/libfont.a
FONTLIB =  -lfont

LINTFONT = $(LINTLIBDIR)/llib-lfont.ln

          DEPLIBS = $(DEPXAWLIB) $(DEPXMULIB) $(DEPXTOOLLIB) $(DEPXLIB)

         DEPLIBS1 = $(DEPLIBS)
         DEPLIBS2 = $(DEPLIBS)
         DEPLIBS3 = $(DEPLIBS)

XMULIB = -lXmu $(XLIB)

        CONFIGDIR = $(LIBDIR)/config

# -----------------------------------------------------------------------
# start of Imakefile

        DEFINES = -DUNCOMPRESS=\"zcat\"
  SYS_LIBRARIES = -lm
        DEPLIBS = $(DEPXAWLIB) $(DEPXMULIB) $(DEPXTOOLLIB) $(DEPXLIB)
LOCAL_LIBRARIES = $(XAWLIB) $(XMULIB) $(XTOOLLIB) $(XLIB)

SRCS=  xonix.c
OBJS=  xonix.o

 PROGRAM = xonix

all:: xonix

xonix: $(OBJS) $(DEPLIBS)
	$(RM) $@
	$(CCLINK) -o $@ $(LDOPTIONS) $(OBJS) $(LOCAL_LIBRARIES) $(LDLIBS)  $(EXTRA_LOAD_FLAGS)

install:: xonix
	@if [ -d $(DESTDIR)$(BINDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(BINDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTPGMFLAGS)  xonix $(DESTDIR)$(BINDIR)/xonix

install.man:: xonix.man
	@if [ -d $(DESTDIR)$(MANDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(MANDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTMANFLAGS) xonix.man $(DESTDIR)$(MANDIR)/xonix.$(MANSUFFIX)

depend::
	$(DEPEND) $(DEPENDFLAGS) -- $(ALLDEFINES) $(DEPEND_DEFINES) -- $(SRCS)

lint:
	$(LINT) $(LINTFLAGS) $(SRCS) $(LINTLIBS)
lint1:
	$(LINT) $(LINTFLAGS) $(FILE) $(LINTLIBS)

clean::
	$(RM) xonix

install:: Xonix.ad
	@if [ -d $(DESTDIR)$(XAPPLOADDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(XAPPLOADDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTAPPFLAGS) Xonix.ad $(DESTDIR)$(XAPPLOADDIR)/Xonix

# -----------------------------------------------------------------------
# common rules for all Makefiles - do not edit

.c.i:
	$(RM) $@
	$(CC) -E $(CFLAGS) $(_NOOP_) $*.c > $@

emptyrule::

clean::
	$(RM_CMD) *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut  "#"*

Makefile::
	-@if [ -f Makefile ]; then set -x; \
	$(RM) Makefile.bak; $(MV) Makefile Makefile.bak; \
	else exit 0; fi
	$(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)

tags::
	$(TAGS) -w *.[ch]
	$(TAGS) -xw *.[ch] > TAGS

# -----------------------------------------------------------------------
# empty rules for directories that do not have SUBDIRS - do not edit

install::
	@echo "install in $(CURRENT_DIR) done"

install.man::
	@echo "install.man in $(CURRENT_DIR) done"

install.linkkit::
	@echo "install.linkkit in $(CURRENT_DIR) done"

Makefiles::

includes::

depend::

# -----------------------------------------------------------------------
# dependencies generated by makedepend

