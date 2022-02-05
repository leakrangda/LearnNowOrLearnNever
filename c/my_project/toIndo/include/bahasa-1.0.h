/*bahasa.h_-_untuk merubah sintaks dasar dari bahasa c, menjadi seperti bahasa
formal indonesia(bahasa).
bahasa.h versi 0.1*/

/*sudah pakai bahasa.h?*/
#ifndef	__BAHASA__

/*jika belum, pakailah, karena "cintai lah ploduk ploduk indonesia... "*/
#define __BAHASA__

/*untuk makro yang menggunakan argument, diharapkan kepada pembuat program
menggunakan satu buah statement (tanpa menggunakana koma (,)). jika digunakan statement majemuk, compiler akan menggangap makro memiliki dua argument, dan argument tidak bisa di perluas di dalam definisi dan akan menghasilkan error.
*/
/*kontrol struktur*/
#define JIKA(x)		if(x)
#define LAINYA		else
#define TUKAR(x)	switch(x)
#define KASUS		case
#define LANJUT		continue
#define REHAT		break 
#define TETAPAN		default

/*pengulangan*/
#define	UNTUK(x)	for(x)
#define SELAMA(x)	while(x)
#define LAKUKAN		do

/*jump*/
#define PERGI		goto

/*operator pembanding*/
#ifdef USE_COMPARE
	#define KURANG		<
	#define LEBIH		>
	#define KURANG_S	<=
	#define LEBIH_S		>=
	#define SAMA		==
	#define TIDAK_S		!=
#endif
/*operator logika*/
#ifdef USE_LOGIC
	#define DAN		&&
	#define ATAU		||
	#define BUKAN		!
#endif
/*operator aritmatika*/
#ifdef USE_ARIT
	#undef ALAMAT
	#define PLUS		+
	#define MINUS		-
	#define BAGI		/
	#define KALI		*	//akan menjadi aneh jika sintaks menggunakan pointer
	#define S_BAGI		%
	#define SAMA_DENGAN	=
#endif

/*operator bit*/
#ifdef USE_BITWISE
	#define B_DAN		&
	#define B_ATAU		|
	#define LAWAN		~
	#define B_XOR		^
#endif

/*pointer dan reference*/
#ifdef USE_PTR
	#define ALAMAT		*
	#define REFEREN		&
#endif

/*compile time operator*/
#ifdef USE_OTHER
	#define UKURAN(x)	sizeof(x)
#endif

/*data type*/
#ifdef USE_DATA
	#define BULAT		int
	#define PECAHAN		float
	#define PANJANG		long
	#define PENDEK		short
	#define PECAHAN_G	double
	#define BYTE		unsigned char
	#define KARAKTER	char
#endif
#endif//akhir dari __BAHASA__

/*edit-penambahan sizeof dan data type-16, february,2017*/
/*edit-penambahan control processor-08, february,2017*/
/*edit-penambahan operator ponter dan reference, 02, january 2017*/
/*ilham nurhikmat*/

/*dibuat oleh Ilham Nurhikmat, 28 oktober 2016.

kerusakan diakibatkan piranti lunak ini diluar dari tanggung jawab penulis.
semua pihak yang terkait dapat mendistribusikan dan merubah, tanpa menghilangkan identitas penulis asli.
semua kreasi cipta dan isi dilindungi oleh Lisensi Umum GNU (GNU GPL).
semua bebas mendapat ilmu, piranti lunak, dan harapan
Open Source untuk kehidupan yang lebih baik.*/
