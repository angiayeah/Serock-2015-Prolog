kot(mruczek).
kot(pikus).
kot(juka).

pies(burek).
pies(misiek).
pies(azor).

plci_zenskiej(juka).

zwierze(X) :- kot(X).
zwierze(X) :- pies(X).

kotka(X) :- kot(X), plci_zenskiej(X).
