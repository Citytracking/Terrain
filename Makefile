SFO_LATLON = 37.816293 -122.202987
NYC_LATLON = 40.756749 -73.998284
LON_LATLON = 51.507553 -0.008271
MOS_LATLON = 55.882322 37.724175

all: index.html background.xml cities.xml

index.html: \
	renders/sanfrancisco-10.png renders/sanfrancisco-11.png renders/sanfrancisco-12.png \
	renders/sanfrancisco-13.png renders/sanfrancisco-14.png renders/sanfrancisco-15.png \
	renders/sanfrancisco-10-bg.jpg renders/sanfrancisco-11-bg.jpg renders/sanfrancisco-12-bg.jpg \
	renders/sanfrancisco-13-bg.jpg renders/sanfrancisco-14-bg.jpg renders/sanfrancisco-15-bg.jpg



renders/sanfrancisco-10.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(SFO_LATLON) -z 10 -d 1024 512 -o $@

renders/sanfrancisco-11.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(SFO_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-12.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(SFO_LATLON) -z 12 -d 1024 512 -o $@

renders/sanfrancisco-13.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(SFO_LATLON) -z 13 -d 1024 512 -o $@

renders/sanfrancisco-14.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(SFO_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-15.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(SFO_LATLON) -z 15 -d 1024 512 -o $@


renders/sanfrancisco-10-bg.jpg:
	python modestmaps-compose.py -c $(SFO_LATLON) -z 10 -p "http://tilefarm.stamen.com/imhof-hills/{Z}/{X}/{Y}.jpg" -d 1024 512 $@

renders/sanfrancisco-11-bg.jpg:
	python modestmaps-compose.py -c $(SFO_LATLON) -z 11 -p "http://tilefarm.stamen.com/imhof-hills/{Z}/{X}/{Y}.jpg" -d 1024 512 $@

renders/sanfrancisco-12-bg.jpg:
	python modestmaps-compose.py -c $(SFO_LATLON) -z 12 -p "http://tilefarm.stamen.com/imhof-hills/{Z}/{X}/{Y}.jpg" -d 1024 512 $@

renders/sanfrancisco-13-bg.jpg:
	python modestmaps-compose.py -c $(SFO_LATLON) -z 13 -p "http://tilefarm.stamen.com/imhof-hills/{Z}/{X}/{Y}.jpg" -d 1024 512 $@

renders/sanfrancisco-14-bg.jpg:
	python modestmaps-compose.py -c $(SFO_LATLON) -z 14 -p "http://tilefarm.stamen.com/imhof-hills/{Z}/{X}/{Y}.jpg" -d 1024 512 $@

renders/sanfrancisco-15-bg.jpg:
	python modestmaps-compose.py -c $(SFO_LATLON) -z 15 -p "http://tilefarm.stamen.com/imhof-hills/{Z}/{X}/{Y}.jpg" -d 1024 512 $@



style.xml: style.mml stylesheet.mss
	cascadenik-compile.py style.mml style.xml

background.xml: background.mml background.mss
	cascadenik-compile.py background.mml background.xml

cities.xml: cities.mml cities.mss
	cascadenik-compile.py cities.mml cities.xml

clean:
	rm -f renders/sanfrancisco-*.png
	rm -f renders/sanfrancisco-*-bg.jpg
	rm -f style.xml
