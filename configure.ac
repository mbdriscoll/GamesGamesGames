AC_INIT([games], [0.95], [mbdriscoll@cs.berkeley.edu])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])

AC_PROG_CC
AC_PROG_CXX
AC_PROG_RANLIB

m4_include([m4/ax_have_opengl.m4])
AX_HAVE_OPENGL

AC_CONFIG_HEADERS([config.h])

AC_CONFIG_FILES([
   Makefile

   vecmath/Makefile

   animation_ssd/6837_heir_skel_def/Makefile
   animation_ssd/Makefile

   rendering/Makefile
   rendering/ray_caster/6837_ray_caster/Makefile
   rendering/ray_caster/Makefile
   rendering/ray_tracer/6837_ray_tracer/Makefile
   rendering/ray_tracer/Makefile

   simulation/Makefile
   simulation/particles_cloth/6837_cloth_sim/Makefile
   simulation/particles_cloth/Makefile
])

# TODO: require fltk

AC_OUTPUT
