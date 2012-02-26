SFO_LATLON = 37.816293 -122.202987
NYC_LATLON = 40.756749 -73.998284
LON_LATLON = 51.507553 -0.008271
MOS_LATLON = 55.882322 37.724175

all: index.html background.xml cities.xml cities-halomask.xml

stack.html: \
	renders/sanfrancisco-14-land-cover.jpg renders/sanfrancisco-14-hillshading.jpg \
	renders/sanfrancisco-14-background.png renders/sanfrancisco-14-water-mask.png \
	renders/sanfrancisco-14-grey-roads.png renders/sanfrancisco-14-city-names-halomask.png \
	renders/sanfrancisco-14-city-names.png \
	renders/sanfrancisco-11-land-cover.jpg renders/sanfrancisco-11-hillshading.jpg \
	renders/sanfrancisco-11-background.png renders/sanfrancisco-11-water-mask.png \
	renders/sanfrancisco-11-grey-roads.png renders/sanfrancisco-11-city-names-halomask.png \
	renders/sanfrancisco-11-city-names.png \
	renders/sanfrancisco-8-land-cover.jpg renders/sanfrancisco-8-hillshading.jpg \
	renders/sanfrancisco-8-background.png renders/sanfrancisco-8-water-mask.png \
	renders/sanfrancisco-8-grey-roads.png renders/sanfrancisco-8-city-names-halomask.png \
	renders/sanfrancisco-8-city-names.png

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



renders/sanfrancisco-14-land-cover.jpg:
	tilestache-compose.py -c ../tilestache.cfg -l land-cover -n $(SFO_LATLON) -z 14 -d 1024 512 $@

renders/sanfrancisco-14-hillshading.jpg:
	tilestache-compose.py -c ../tilestache.cfg -l hillshading -n $(SFO_LATLON) -z 14 -d 1024 512 $@

renders/sanfrancisco-14-background.png: background.xml
	python mapnik-render.py -f fonts -s background.xml -l $(SFO_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-water-mask.png:
	python mapnik-render.py -f fonts -s water-mask.xml -l $(SFO_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-grey-roads.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(SFO_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-city-names-halomask.png: cities-halomask.xml
	python mapnik-render.py -f fonts -s cities-halomask.xml -l $(SFO_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-city-names.png: cities.xml
	python mapnik-render.py -f fonts -s cities.xml -l $(SFO_LATLON) -z 14 -d 1024 512 -o $@


renders/sanfrancisco-11-land-cover.jpg:
	tilestache-compose.py -c ../tilestache.cfg -l land-cover -n $(SFO_LATLON) -z 11 -d 1024 512 $@

renders/sanfrancisco-11-hillshading.jpg:
	tilestache-compose.py -c ../tilestache.cfg -l hillshading -n $(SFO_LATLON) -z 11 -d 1024 512 $@

renders/sanfrancisco-11-background.png: background.xml
	python mapnik-render.py -f fonts -s background.xml -l $(SFO_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-water-mask.png:
	python mapnik-render.py -f fonts -s water-mask.xml -l $(SFO_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-grey-roads.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(SFO_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-city-names-halomask.png: cities-halomask.xml
	python mapnik-render.py -f fonts -s cities-halomask.xml -l $(SFO_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-city-names.png: cities.xml
	python mapnik-render.py -f fonts -s cities.xml -l $(SFO_LATLON) -z 11 -d 1024 512 -o $@


renders/sanfrancisco-8-land-cover.jpg:
	tilestache-compose.py -c ../tilestache.cfg -l land-cover -n $(SFO_LATLON) -z 8 -d 1024 512 $@

renders/sanfrancisco-8-hillshading.jpg:
	tilestache-compose.py -c ../tilestache.cfg -l hillshading -n $(SFO_LATLON) -z 8 -d 1024 512 $@

renders/sanfrancisco-8-background.png: background.xml
	python mapnik-render.py -f fonts -s background.xml -l $(SFO_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-water-mask.png:
	python mapnik-render.py -f fonts -s water-mask.xml -l $(SFO_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-grey-roads.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(SFO_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-city-names-halomask.png: cities-halomask.xml
	python mapnik-render.py -f fonts -s cities-halomask.xml -l $(SFO_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-city-names.png: cities.xml
	python mapnik-render.py -f fonts -s cities.xml -l $(SFO_LATLON) -z 8 -d 1024 512 -o $@



style.xml: style.mml stylesheet.mss routes.mss
	cascadenik-compile.py style.mml style.xml

background.xml: background.mml background.mss
	cascadenik-compile.py background.mml background.xml

cities.xml: cities.mml cities.mss routes.mss states.mss
	cascadenik-compile.py cities.mml cities.xml

cities-halomask.xml: cities-halomask.mml cities.mss
	cascadenik-compile.py cities-halomask.mml cities-halomask.xml

clean:
	rm -f renders/sanfrancisco-*.png
	rm -f renders/sanfrancisco-*-bg.jpg
	rm -f style.xml
	rm -f background.xml
	rm -f cities.xml
	rm -f cities-halomask.xml
