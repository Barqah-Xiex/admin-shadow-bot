clear
echo "masukan nomor Owner menggunakan kode negara"
echo "contoh: 628979059392"
read nomor
echo ""
echo "masukan passwordmu"
read pass
echo ""
echo "masukan idbot"
read id
echo ""
echo ""
echo "masuka perintah"
echo "[+] start"
echo "[+] restart"
echo "[+] stop"
echo "[+] qr"
echo "[+] log"


while [ true ]
do
    read command
    if [ $command = "log" ]
    then
        while [ true ]
        do
            curl -l http://xiex.my.id/api/jsonlog/$id
        done
    else
        curl -l http://xiex.my.id/aksesbot/$nomor/$pass/$command/$id
    fi
done
