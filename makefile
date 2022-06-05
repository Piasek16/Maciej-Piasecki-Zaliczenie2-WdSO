SHELL=/bin/bash
DIRS = bin include lib src
.PHONY: makeDirs moveFiles clean
.PRECIOUS: %.o

vpath %.c src
vpath %.h include
vpath %.so lib
vpath %.a lib

all: makeDirs Code2 moveFiles

Code2: Code2.o libKalkulatorObjetosci.so libKalkulatorPola.a
	gcc -o $@ $^ -L./lib -Wl,-R./lib
	-mv -uf $@ bin

%.o: %.c
	gcc -I include -c -fPIC $<

lib%.a: %.o
	ar rs $@ $<
	
lib%.so: %.o
	gcc -shared -o $@ $<

moveFiles:
	-mv -uf *.h include
	-mv -uf *.so lib
	-mv -uf *.a lib
	-mv -uf *.c src

makeDirs:
	for dir in ${DIRS} ; do \
		if [[ ! -d $$dir ]] ; then \
			mkdir $$dir ; \
		fi ; \
	done

clean: 
	-rm -rf bin lib *.o