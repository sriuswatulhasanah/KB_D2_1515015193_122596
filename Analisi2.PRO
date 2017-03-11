/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains %untuk mendefinisikan di domain 
  brand,color = symbol  
  age = byte
  price, mileage = ulong

predicates
  nondeterm car(brand,mileage,age,color,price) % merk mobil, mileage mobil, tahun mobil, warna mobil, harga mobil
  
clauses
  car(chrysler,130000,3,red,12000). % mobil merk chrysler, mileage 130.000, age 3, warna merah, harga 12.000 
  car(ford,90000,4,gray,25000).     % mobil merk ford, mileage 90.000, age 4, warna abu - abu, harga 25.000
  car(datsun,8000,1,black,30000).   % mobil merk datsun, mileage 8.000, age 1, warna hitam, harga 30.000

goal
  car(Merk,_,_,_,X),X<26000. % disini goal nya yaitu merk mobil apa yang harganya lebih kecil dari 26000
                             % jawabannya merk = chrysler, x = 12.000
                             % dan merk = ford, x = 25.000
                             % jadi solutions nya ada 2.
	  