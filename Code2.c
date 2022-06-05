#include <stdio.h>
#include "KalkulatorObjetosci.h"
#include "KalkulatorPola.h"

int main() {
    int tryb, c;
    do {
        printf("Dostepne tryby: 1 - Obliczanie pola kwadratu, 2 - Obliczanie objetosci szescianu\n");
        printf("Wybierz tryb: ");
		if (scanf("%d", &tryb) != 1){
			while ((c = getchar()) != '\n' && c != EOF); //clear buffer
		}
		while ((c = getchar()) != '\n' && c != EOF);
    } while (tryb != 1 && tryb != 2);
	while ((c = getchar()) != '\n' && c != EOF); //clear buffer again
    if (tryb == 1) {
        printf("Podawaj dlugosci bokow (uzywaj kropki zamiast przecinka jako separatora czesci ulamkowej):\n");
        float bok1, bok2;
        printf("Podaj dlugosc boku 1: ");
        scanf("%f", &bok1);
        printf("Podaj dlugosc boku 2: ");
        scanf("%f", &bok2);
        printf("Pole kwadratu o podanych wymiarach: ");
        printf("%f", obliczPole(bok1, bok2));
    } else {
        printf("Podawaj dlugosci bokow (uzywaj kropki zamiast przecinka jako separatora czesci ulamkowej):\n");
        float bok1, bok2, bok3;
        printf("Podaj dlugosc boku 1: ");
        scanf("%f", &bok1);
        printf("Podaj dlugosc boku 2: ");
        scanf("%f", &bok2);
        printf("Podaj dlugosc boku 3: ");
        scanf("%f", &bok3);
        printf("Objetosc szescianu o podanych wymiarach: ");
        printf("%f", obliczObjetosc(bok1, bok2, bok3));
    }
    printf("\n");
    return 0;
}
