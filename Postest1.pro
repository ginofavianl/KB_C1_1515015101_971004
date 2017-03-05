predicates

	doctor(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)
	progammer(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)
	job(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)

clauses

	doctor(mohanna,33,3,perempuan,10000000).
	doctor(leony,45,4,lakilaki,15000000).
	doctor(paul,40,1,lakilaki,20000000).

	progammer(favian,30,2,lakilaki,5000000).
	progammer(mia,38,5,perempuan,10000000).
	progammer(digty,35,3,lakilaki,7500000).

	job(Nama,Umur,LamaBekerja,JenisKelamin,Gaji):-
	doctor(Nama,Umur,LamaBekerja,JenisKelamin,Gaji);
	progammer(Nama,Umur,LamaBekerja,JenisKelamin,Gaji).

goal

	doctor(Nama,Umur,LamaBekerja,JenisKelamin,15000000);
	progammer(Nama,Umur,LamaBekerja,JenisKelamin,7500000).