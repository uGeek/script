#!/bash/bin                                                                                                                                                                                                        
#
# ugeek.github.io
# 14/01/20
#

echo "Escribe el nombre del repositorio"
echo "            Ejemplo: uGeek/script"
read URL
echo "¿Que tipo de archivo quieres descargar?, zip, deb, rpm,..."
read ARCHIVO

curl -s https://api.github.com/repos/$URL/releases/latest \
| grep "browser_download_url.*$ARCHIVO" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
