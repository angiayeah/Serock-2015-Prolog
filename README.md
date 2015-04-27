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


### Dzień 2; rekurencja z akumulatorem
Możemy wprowadzać predykaty używające innych pomocniczych predykatów, często o wyższej arności.

Często używa się techniki „z akumulatorem”, czyli wprowadzamy pomocniczy argument, w którym akumulowany jest wynik.

### Zadania na akumulator
* Napiszcie predykat `odwroc(Lista, Wynik)` który zachodzi, gdy lista `Wynik` jest odwróconą listą `Lista`.
Uwaga: czy kolejność argumentów ma w tym przypadku znaczenie? Porównaj `odwroc([a,b,c], X)` oraz `odwroc(X, [a,b,c])`.
* `filtruj(Lista, Element, Wynik)` - zachodzi, gdy `Wynik` zawiera tylko `Element`y - i to dokładnie tyle, co występuje w `Lista`.
* `unikalne(Lista, Wynik)` - zachodzi, gdy `Wynik` zawiera wszystkie rodzaje elementów z `Lista`, ale bez powtórzeń.
Kolejność występowania elementów w `Wynik` ma być zgodna z kolejnością pierwszych wystąpień elementów w `Lista`.

### Zadanie na DRY
* `palindrom(A)` - zachodzi, gdy A jest palindromem. Jaka jest definicja palindromu?

### Zadania na wyrobienie intuicji
* `polacz(A, B, C)` - zachodzi, gdy lista `C` jest wynikiem konkatenacji `A` z `B`, np. `polacz([m,a], [c,h], [m,a,c,h])`.
* `srodek(Lista, Wynik)` - zachodzi, gdy `Wynik` jest środkowym elementem/podlistą listy `Lista`. Umówmy się, że zachodzi `srodek([a, b, c], b)` oraz `srodek([a,b,c,d], [b,c])`.

### Arytmetyka - porównania
Łatwo można sprawdzić, że zachodzi `2 = 2`. Natomiast `2 + 2 = 4` da nam `false`. Dlaczego?

Do ewaluacji wyrażeń arytmetycznych używamy predykatu `is/2`.

`Z is W` odnosi sukces wtedy i tylko wtedy, gdy `W` jest termem reprezentującym wyrażenie arytmetyczne, którego wszystkie składowe mają znaną wartość (liczbową) oraz `Z` jest uzgadnialne z wartością tego wyrażenia (`Z` może być stałą liczbową albo zmienną). Przykłady:

```prolog
| ?- 2 is 1+1.
yes
| ?- X is 1+1.
X = 2 ? ;
no
```

(`no` oznacza, że nie ma więcej rozwiązań niż `X = 2`)

Istnieją także predykaty `=:=/2` oraz `=\=/2`.

### Arytmetyka - operacje
`+/2`, `-/2`, `*/2` - standardowe
`-/1` - negacja
`//` - dzielenie całkowite, `/` - dzielenie zmiennoprzecinkowe
`mod` - modulo

### Zadania na arytmetykę
* `nwd(A, B, C)` - zachodzi, gdy C jest największym wspólnym dzielnikiem A i B.
* `wp(A, B)` - zachodzi, gdy A i B są względnie pierwsze.

### Zaprzeczenia
W Prologu mamy dostęp do pewnego szczególnego typu negacji - służy do tego predykat `\+` (o arności 1).

Wyrażenie `\+ X` jest prawdziwe, gdy `X` nie da się dowieść przy obecnej wiedzy.

### Zadanie
* `pierwsza(X)` - zachodzi, gdy X jest liczbą pierwszą.
