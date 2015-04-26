# Warsztaty KFnrD w Serocku, rok 2015 - Programowanie w logice

* Co to jest programowanie w logice?
* Co to jest predykat?

### Definiowanie świata, w jakim się poruszamy
W jaki sposób możemy opisać fakt?

Przykład: `facts.pl` (uruchamiamy pisząc `swipl facts.pl`).

Jak zadawać pytania?

* `kot(X)`
* `pies(X), teraz_glodny(X)`

Różnica pomiędzy stałymi i zmiennymi.

### Predykaty wieloargumentowe
Co to są predykaty wieloargumentowe?

Przykład: `like.pl`

Jakbyście zapytali o to, kogo lubi Jan? A o pary ludzi, którzy lubią się wzajemnie?

### Program: fakty i reguły wnioskowania
* Reguły wnioskowania
* Przykład: `rules.pl`

### Zadanie
Drzewo genealogiczne

* podajcie kilka faktów postaci `ojciec(siemomysl, mieszko1)`
* utwórzcie predykat `wnuk`

### Obiekty
Oprócz orzekania o napisach (np. `kot(pikus)`, czyli `pikus` to obiekt, dla którego
zachodzi własność `kot`), można orzekać o obiektach: `trzymam_w_domu(kot(pikus, 10, 7))`.
Czytamy to: "`kot(pikus, 10, 7)` to obiekt, dla którego zachodzi własność `trzymam_w_domu`.

### Zadanie
Napisz predykat co na podstawie imienia znajdzie ile zwierzę (z `facts2.pl`) ma lat.

### Zadanie
Napisz predykat co na podstawie imienia znajdzie zwierzęta mające (z `facts2.pl`) ileś lat.

### Listy
* Co to jest lista?
* Lista pusta kontra lista niepusta.
