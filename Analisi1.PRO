/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  product,sum = integer

predicates
  add_em_up(sum,sum,sum) - procedure (i,i,o)
  multiply_em(product,product,product) - procedure (i,i,o)

clauses
  add_em_up(X,Y,Sum):-          % jadi add_em_up(x,y,sum) jika sum = X + Y.
	Sum=X+Y.
  multiply_em(X,Y,Product):-
	Product=X*Y.            % multiply_em(x,y,Product) jika Product = X * Y.

goal
  add_em_up(32,54,Sum).  % Jadi goal nya disini dia menggunakan kata kunci sum, dan rumus sum adalah x + y. 
  			 % jadi x = 32 , y = 54. sum = x + y
  			                       % sum = 32 + 54 = 86 
