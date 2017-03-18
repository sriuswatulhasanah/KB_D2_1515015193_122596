/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  name,thing = symbol % name dan thing di simbolkan dengan tipe symbol.

predicates
  likes(name,thing) - determ (o,i)
  reads(name) - procedure (o)
  is_inquisitive(name) - determ (i)

clauses
  likes(john,wine):-!. % john suka wine jika tidak.
  likes(lance,skiing):-!. %lance suka skiing jika tidak.
  likes(lance,books):-!. %lance suka buku jika tidak.
  likes(lance,films):-!. %lance suka film jika tidak.
  likes(Z,books):-  % z suka buku jika
	reads(Z), % z membaca dan 
	is_inquisitive(Z). % z ingin tau

  reads(john). %john membaca

  is_inquisitive(john). %john ingin tau

goal
  likes(X,wine). % x suka wine, jadi jawabannya john karena john suka wine.
