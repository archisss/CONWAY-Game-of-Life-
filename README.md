# CONWAY-Game-of-Life-PHP
Juego de la Vida de CONWAY escrito en PHP

Cada ejecución el programa genera una matriz de 4x4;
en ella se crea una celula de 3x3.

REGLAS DEL JUEGO 
Para Celulas Pobladas (el random es igual a 1) las relas son las siguientes:
1) Si tiene 1 o ningun vecino, muere por soledad.
2) Si tiene 4 o más vecinos, muere por sobrepoblación.
3) Si dos o tres vecinos, sobrevive.

Para Celulas No Pobladas (el random es igual a 0) las relas son las siguientes:
1) Si tiene 3 vecinos, nace en la siguiente iteración.

Cada ejecución genera una matriz aleatoria y la siguiente iteración según las reglas descritas.

Escrito por 
Ing. José Carlos Anaya Chávez
