# Maciej-Piasecki-Zaliczenie2-WdSO
## Kroki potrzbne do zweryfikowania poprawnosci zadania
1. Pobierz repozytorium za pomocą polecenia 
`git clone https://github.com/Piasek16/Maciej-Piasecki-Zaliczenie2-WdSO.git`
Alternatywnie pobierz repozytorium w formacie .zip (Zielony przycisk w prawym gornym rogu) i rozpakuj je do wybranej lokalizacji
2. Wejdz do lokalizacji repozytorium - program w najnowszym commicie jest od razu skompilowany. Nalezy wiec wyczyscic skompilowane pliki, mozesz to zrobic na dwa sposoby:
 - Za pomoca narzedzia makefile i zaprogramowanej dyrektywy clean: `make clean`
 - Recznie usuwajac pliki z rozszerzeniami *.o *.so *.a oraz skompilowany plik Code2
3. W celu kompilacji uruchom plik makefile poleceniem `make`
4. Skompilowany program pojawi sie w katalogu `./bin`, natomiast odpowiednie pliki zostana przeniesione do swoich katalogow
5. Nalezy uruchomic program poleceniem `./bin/Code2`
### Aby sprawdzic poprzednie wersje programu nalezy wykonac nastepujace kroki
1. Uzywajac polecenia `git log` nalezy wyswietlic wszystkie commity w repozytorium
2. Aby przejsc do wybranego commita nalezy zlokalizowac i skopiowac jego Hash (jest to wartosc zlozona z cyfr i liczb pokolorowana na żółto wystepujaca po slowie commit, ponad autorem)
3. Nalezy wpisac polecenie `git checkout (skopiowany Hash)` - spowoduje to przeksztalcenie katalogu pracy do stanu zapisanego w commicie
4. Nastepnie, aby po skompilowaniu biblioteka wspoldzielona byla widoczna nalezy ustawic zmienna LD_LIBRARY_PATH, poprzez wpisanie w bash polecenia `export LD_LIBRARY_PATH=$(pwd)`, jezeli znajdujemy sie w folderze zawiarajacym pliki z repozytorium. W innym wypadku nalezy zamienic `$(pwd)` w komendzie na sciezke prowadzaca do folderu z repozytorium
5. Ostatnim krokiem jest uruchomienie kompilacji poleceniem `make` i sprawdzenie dzialania programu poprzez jego uruchomienie komenda `./Code2`  
> Aby powrocic do aktualnego stanu repozytorium wpisz polecenie `git switch -` lub `git checkout -` lub `git checkout main`
(Nalezy pamietac, ze skompilowane w przeszlych commitach pliki, nie sa sledzone przez git'a zatem najlepiej jest je usunac recznie po zakonczeniu testowania, aby zachowac czystosc w folderze z repozytorium)
# Rozklad plikow w katalogach prezentuje sie nastepujaco
`├── bin`  
`│ └── Code2`  
`├── include`  
`│ ├── KalkulatorObjetosci.h`  
`│ └── KalkulatorPola.h`  
`├── lib`  
`│ ├── libKalkulatorObjetosci.so`  
`│ └── libKalkulatorPola.a`  
`├── src`  
`│ ├── Code2.c`  
`│ ├── KalkulatorObjetosci.c`  
`│ └── KalkulatorPola.c`  
`├── Code2.o`  
`├── KalkulatorObjetosci.o`  
`├── KalkulatorPola.o`  
`└── makefile`  
### Dodatkowe informacje
W przypadku wrzucenia plikow do folderu repozytorium bez podzialu na foldery, przy kompilacji odpowiednie foldery zostana stworzone przez program, a nastepnie odpowiednie pliki zostana do nich przeniesione po zakonczonym procecie kompilacji
