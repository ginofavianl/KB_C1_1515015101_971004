domains
  nama,brand,warna,kode = symbol
  umur = byte     
  hasil, harga = long
  
predicates
  run - nondeterm()
  nondeterm id(nama,umur,kode)
  nondeterm handphone(brand, warna, harga)
  handphone(brand) - nondeterm (i) 
  procedure hitung(harga,hasil)  

clauses
  run:-
	readchar(G),G='g'.
  	
  	id("Gino", 20, "G001").  
  	id("Leony", 19, "G002").	
	
  	handphone("Iphone 5S","White",6000000).
  	handphone("Samsung A5 2017","Black",5000000).
  	
  	handphone(Merk):-
  		Merk="Samsung".
   
 	hitung(Harga,Hasil):-
     		Hasil=Harga/2.  
     		
     		
 goal
  run,
  id(Nama,Umur,"G002"),
  handphone(Handphone,Warna,5000000), 
  hitung(500000000,HargaHPSecond);  
  handphone("Samsung").