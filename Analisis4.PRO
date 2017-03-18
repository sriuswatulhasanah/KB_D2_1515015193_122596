/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  title,author = symbol
  pages        = unsigned

predicates
  book(title,pages) - nondeterm (i,o)
  written_by(author,title) - nondeterm (o,o)
  long_novel(title) - nondeterm (o)

clauses
  written_by(fleming,"DR NO"). % flemiing penulis buku DR NO.
  written_by(melville,"MOBY DICK"). % melville penulis buku MOBY DICK.

  book("MOBY DICK",250). % buku MOBY DICK dan halaman 250.
  book("DR NO",310). % buku DR NO dan halaman 310.

  long_novel(Title):- 
	written_by(_,Title), % penulis siapa saja dan judul bukunya dan
	book(Title,Length), % judul buku dengan panjang halaman
	Length > 300. % halaman lebih dari 300 lembar.

goal
  long_novel(X). % jadi disini hasil rannya DR NO, karena judul buku yang halamannya lebih dari 300 itu adalag DR NO.
