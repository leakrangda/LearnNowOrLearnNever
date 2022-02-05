return_val=-1

function coba {
	return_val=$#
	for i in $(seq 0 $#);do
		echo $1
		shift
	done
	return
}

coba "ini" "hanya" "percobaan"
echo -e "no argument '$#'=$return_val\n"
coba "jika ini adalaha percoban" "kapan" "ujian"
echo -e "no argument '$#'=$return_val\n"
coba 
echo -e "no argument '$#'=$return_val\n"

