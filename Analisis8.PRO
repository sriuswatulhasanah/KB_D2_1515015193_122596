/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  type(symbol,symbol) - nondeterm (o,i) 
  is_a(symbol,symbol) - nondeterm (o,i)
  lives(symbol,symbol) - nondeterm (i,i)
  can_swim(symbol) - nondeterm (o)

clauses
  type(ungulate,animal). %hewan berkuku adalah jenis hewan.
  type(fish,animal). % ikan adalah jenis hewan.

  is_a(zebra,ungulate). %zebra adalah hewan berkuku.
  is_a(herring,fish). %haring adalah ikan.
  is_a(shark,fish). %hiu adalah ikan.

  lives(zebra,on_land). %zebra hidup didarat.
  lives(frog,on_land). %katak hidup didarat.
  lives(frog,in_water). %katak hidup didalam air.
  lives(shark,in_water).%hiu hidup didalam air.

  can_swim(Y):-  %hewan(y) dapat berenang jika
	type(X,animal), %(x) jenis hewan dan
	is_a(Y,X), % y adalah x(hewan) dan
	lives(Y,in_water). % y hidup didalam air.

goal
  can_swim(What), % apa yang bisa berenang jawabannya shark dan
  write("A ",What," can swim\n"). % apa yang bisa berenang jawabannya "A Shark can swim" (hiu bisa berenag).
