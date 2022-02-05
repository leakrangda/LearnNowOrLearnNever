
interact () {
	local principal=
	local interest=
	local months=
	while true;do
		clear
		read -p "masukan pricipal:" principal
		read -p "masukan interest:" interest
		read -p "masukan months:" months
		#kalkulasi principal interest months
		read -p "lanjut?[Y|n]" jawab
		case $jawab in
			Y|y)
				continue;;
			N|n)
				break;;
			*)
				echo "unknown character."
				continue;;
		esac
	done
	return
}
interact
