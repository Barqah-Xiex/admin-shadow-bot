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


while [ true ]
do
    read command
    content=$("curl -l http://xiex.my.id/aksesbot/$nomor/$pass/$command/$id -q -O -)
    echo $content
done
