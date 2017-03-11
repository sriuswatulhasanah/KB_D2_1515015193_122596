/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  phone_number(symbol,symbol) - nondeterm (i,o)

clauses
  phone_number("Albert","EZY-3665"). % Albert phone_number "EZY-3665"
  phone_number("Betty","555-5233").  % Betty phone_number "555-5233"
  phone_number("Carol","909-1010").  % Carol phone_number "909-1010"
  phone_number("Dorothy","438-8400"). % Dorathy phone_number "438-8400"

goal
  phone_number("Carol",Number). % jadi goalnya yaitu mencari carol phone_number dan numbernya.
                                % jawabannya "909 - 1010" karena fakta diatas mengatakan bahwa phone_number("carol","909-1010").
	