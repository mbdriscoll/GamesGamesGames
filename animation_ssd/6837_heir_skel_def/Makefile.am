bin_PROGRAMS = a2

#AM_CPPFLAGS = -I${top_srcdir}/vecmath ${GL_CFLAGS}
AM_CPPFLAGS = ${VECM_CFLAGS}  ${FLTK_CFLAGS} ${GL_CFLAGS}
AM_LDFLAGS = -L${top_builddir}/vecmath -lvecmath ${FLTK_LDFLAGS} ${GL_LIBS}

a2_SOURCES = \
	bitmap.cpp \
	camera.cpp \
	MatrixStack.cpp \
	modelerapp.cpp \
	modelerui.cpp \
	ModelerView.cpp \
	Joint.cpp \
	SkeletalModel.cpp \
	Mesh.cpp \
	main.cpp
