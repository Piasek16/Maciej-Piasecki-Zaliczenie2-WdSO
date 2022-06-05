Code2: Code2.c libKalkulatorObjetosci.so libKalkulatorPola.a
	gcc -o $@ $^

%.o: %.c
	gcc -c -fPIC $<

lib%.a: %.o
	ar rs $@ $<
	
lib%.so: %.o
	gcc -shared -o $@ $<
