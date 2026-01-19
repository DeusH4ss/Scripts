make -f objs/Makefile
make[1] : on entre dans le répertoire « /tmp/nginx-1.4.0 »
cc -c -pipe  -O -W -Wall -Wpointer-arith -Wno-unused -Werror -g  -I src/core -I src/event -I src/event/modules -I src/os/unix -I objs \
	-o objs/src/core/nginx.o \
	src/core/nginx.c
In file included from src/core/ngx_config.h:26,
                 from src/core/nginx.c:8:
src/os/unix/ngx_linux_config.h:54:10: fatal error: sys/sysctl.h: Aucun fichier ou dossier de ce nom
   54 | #include <sys/sysctl.h>
      |          ^~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [objs/Makefile:339 : objs/src/core/nginx.o] Erreur 1
make[1] : on quitte le répertoire « /tmp/nginx-1.4.0 »
make: *** [Makefile:8 : build] Erreur 2
