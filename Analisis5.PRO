/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  likes(symbol,symbol) - nondeterm (i,o)
  tastes(symbol,symbol) - nondeterm (i,i)
  food(symbol) - nondeterm (o)

clauses
  likes(bill,X):- % bill seka x jika
	food(X), % x itu adalah makanan dan
	tastes(X,good). % makanan itu rasanya enak.

  tastes(pizza,good). % pizza rasanya enak. 
  tastes(brussels_sprouts,bad). % brussels_sprouts rasanya tidak enak.

  food(brussels_sprouts). % brussels_sprouts adalah makanan.
  food(pizza). % pizza adalah makanan.

goal
  likes(bill,What). % bill suka apa, jawabannya bill suka pizza karena pizza itu makanan dan rasanya enak.
	