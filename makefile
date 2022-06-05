Code2: Code2.c libKalkulatorObjetosci.so libKalkulatorPola.a
	gcc -o Code2 Code2.c libKalkulatorObjetosci.so libKalkulatorPola.a

libKalkulatorPola.a: KalkulatorPola.c
	gcc -c -fPIC KalkulatorPola.c
	ar rs libKalkulatorPola.a KalkulatorPola.o
	
libKalkulatorObjetosci.so: KalkulatorObjetosci.c
	gcc -c -fPIC KalkulatorObjetosci.c
	gcc -shared -o libKalkulatorObjetosci.so KalkulatorObjetosci.o
