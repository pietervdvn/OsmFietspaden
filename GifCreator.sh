
while read in; 
do 
DATE=$in

LINK="https://overpass-turbo.eu/map.html?Q=%2F*%0AThis%20overpass%20query%20loads%20all%20highways%20for%20which%20a%20surface%20tag%20is%20present.%0A%0ADepending%20on%20the%20surface%2C%20another%20color%20is%20used%20to%20render.%0A%0A*%2F%0A%0A"$DATE"%0A%0A%0A(%0A%20%20way%5Bsurface%5D(51.19357245630558%2C3.190326690673828%2C51.224598453803715%2C3.2737112045288086)%3B%0A%20%20node%5Bsurface%5D(51.19357245630558%2C3.190326690673828%2C51.224598453803715%2C3.2737112045288086)%3B%0A%20%20relation%5Bsurface%5D(51.19357245630558%2C3.190326690673828%2C51.224598453803715%2C3.2737112045288086)%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%7B%7Bstyle%3A%20%0Anode%2C%20way%2C%20area%0A%7B%20color%3Ablue%3B%20fill-color%3Ablue%3B%20%7D%0A%0Away%5Bsurface%3Dsett%5D%5Bsett%3Apattern%3Dbogen%5D%0A%7B%20color%3Abrown%3B%20fill-color%3Abrown%3B%20dashes%3A%204%2C8%7D%0A%0Away%5Bsurface%3Dsett%5D%2Cway%5Bsurface%3Dwood%5D%0A%7B%20color%3Abrown%3B%20fill-color%3Abrown%3B%20%7D%0A%0A%0Away%5Bsurface%3Dasphalt%5D%0A%7B%20color%3Ablack%3B%20fill-color%3Ablack%20%7D%0A%0Away%5Bsurface%3Dconcrete%5D%2Cway%5Bsurface%3Dconcrete%3Aplates%5D%0A%7B%20color%3Agrey%3B%20fill-color%3Agrey%20%7D%0A%0Away%5Bsurface%3Dpaving_stones%5D%2Cway%5Bsurface%3Dpaving_stones%3A20%5D%2Cway%5Bsurface%3Dpaving_stones%3A30%5D%0A%7B%20color%3Apink%3B%20fill-color%3Apink%20%7D%0A%0Away%5Bsurface%3Dcobblestone%5D%2Cway%5Bsurface%3Dpaved%5D%2Cway%5Bsurface%3Dunpaved%5D%0A%7B%20color%3Ared%3B%20fill-color%3Ared%20%7D%0A%0Away%5Bsurface%3Dcompacted%5D%0A%7B%20color%3Ayellow%3B%20fill-color%3Ayellow%20%7D%0A%0A%20%7D%7D"

echo $DATE
firefox "$LINK"

sleep 1

wmctrl -a firefox
xdotool mousemove 600 500 --sync

END=8
for i in $(seq 1 $END); do echo $i; sleep 1; done

xdotool keydown Ctrl
xdotool click 4
xdotool keyup Ctrl

sleep 1

gnome-screenshot -B -f "Timelapse/Surfaces $DATE.png"
xdotool key Ctrl+w

done < Dates.txt
