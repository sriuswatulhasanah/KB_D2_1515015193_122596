/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  child = symbol % anak dengan tipe data symbol
  age   = integer % usia dengan tipe data integer

predicates
  player(child,age) - nondeterm (o,i), nondeterm (i,i) 

clauses
  player(peter,9). % peter pemain dengan usia 9 tahun.
  player(paul,10). % paul pemain dengan usia 10 tahun.
  player(chris,9). % chris pemain dengan usia 9 tahun.
  player(susan,9). % susan pemain dengan usia 9 tahun.

goal
  player(Person1,9), % pemain dengan usia 9 tahun dan
  player(Person2,9), % pemain dengan usia 9 tahun dan
  Person1 <> Person2. % jadi tanda <> menandakan jika person1 dengan usia yang sama dengan person2 tetapi orangnya berbeda.
