Code2: Code2.c libKalkulatorObjetosci.so libKalkulatorPola.a
	gcc -o $@ $^

.c.o:
	gcc -c -fPIC $<

libKalkulatorPola.a: KalkulatorPola.o
	ar rs $@ $<
	
libKalkulatorObjetosci.so: KalkulatorObjetosci.o
	gcc -shared -o $@ $<
