# README_extra
## Odpowiedź
Oczywiscie, ze mozna utworzyc taki commit, zawarlem go w repozytrium jako ostatni commit(nie liczac commita dodajacego README.md oraz README-extra.md).
Aby go utworzyc nalezy:
1. Stworzyc odpowiednie foldery (bin, include, lib, src)
2. Przeniesc do nich odpowiadajace pliki (Code2, KalkulatorObjetosci.h, KalkulatorPola.h libKalkulatorObjetosci.so, libKalkulatorPola.a, Code2.c, KalkulatorObjetosci.c, KalkulatorPola.c)
3. Przystosowac plik makefile do dzialania z folderami
4. Dodac wszystkie pliki do staging area poleceniem `git add .`
5. Wykonac commit poleceniem `git commit -m "Rozwiniecie do drzewiastej struktury zrodel"`
> Dodatkowo mozna przenosic sie miedzy poszczegolnymi commitami za pomoca polecenia `git checkout (Hash commita)`, dokladne polecenia jak to wykonac zawarlem w pliku `README.md`
