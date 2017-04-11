/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E08.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  factorial(unsigned,real) - procedure (i,o) %pendeklarasian predikat factorial yaitu unsigned dan real.
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i) %predikat factorial dideklarasikan lagi kembali yaitu unsigned dan real, bedanya dengan yang diatas hanya ada 2 argumen sedangkan ini ada 4.

	%type data unsigned yaitu nilai tidak boleh 0 maupun minus.
    	%type data real yaitu bilangan pecahan.
    
/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):- %klausa pertama yang dicocokkan dengan goal. Pada variabel merupakan 3 dan FactN belum diketahui nilainya.
	factorial(N,FactN,1,1.0). %subgoal dari factorial diatas, factorial ini memilik 4 argumen yaitu (N,FactN,1,1.0) dan nilai N=3.

  factorial(N,FactN,N,FactN):-!. /*factorial ini memiliki 4 argumen kemudian dibelakangnya ada tanda ! (cut). Berarti jika nilai argumen pertama sama dengan argumen ketiga serta
  				  argumen kedua sama dengan keempat maka program akan menghentikan lacak balik.*/
  factorial(N,FactN,I,P):- %factorial ini memiliki 4 argumen. Karena N = 3, FactN belum diketahui nilainya, I = 1, dan P = 1.0
	NewI = I+1, %Nilai dari NewI dari nilai dari I + 1
	NewP = P*NewI, %Nilai dari NewP dari nilai dari P * NewI
	factorial(N, FactN, NewI, NewP). %factorial ini memiliki 4 argumen dari nilai subgoal diatas.

goal
  factorial(3,X). /*goal yang akan dicari X, pada goal factorial ini ialah 3 pada argumen pertama dan pada argumen kedua berisi variabel X. Nilai dari X inilah yang akan dicari solusinya.
  		    Pertama program akan mencari fakta dari rule yang sama dengan goal, maka ditemukan factorial(N,FactN).Kemudian dicari pada klausa ini untuk diunifikasikan argumennya. 
  		    Karena X variabel yang belum diketahuin, maka X dapat diunifikasikan ke variabel manapun. FactN merupakan variabel yang belum diketahui dari rule factorial, 
  		    maka akan terjadi unifikasi diantara X dan factorial, sehingga X sama dengan FactN. Dan variabel N diikat dengan nilai 3.*/
