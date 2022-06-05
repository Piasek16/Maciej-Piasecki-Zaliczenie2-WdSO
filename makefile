Code2: Code2.c libKalkulatorObjetosci.so libKalkulatorPola.a
	gcc -o $@ $^

libKalkulatorPola.a: KalkulatorPola.c
	gcc -c -fPIC $<
	ar rs $@ KalkulatorPola.o
	
libKalkulatorObjetosci.so: KalkulatorObjetosci.c
	gcc -c -fPIC $<
	gcc -shared -o $@ KalkulatorObjetosci.o
