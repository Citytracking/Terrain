SFO_LATLON = 37.816293 -122.202987
NYC_LATLON = 40.756749 -73.998284
LON_LATLON = 51.507553 -0.008271
MOS_LATLON = 55.882322 37.724175

all: index.html background.xml cities.xml cities-halomask.xml

index.html: \
	renders/sanfrancisco-14-land-cover.jpg renders/sanfrancisco-14-hillshading.jpg \
	renders/sanfrancisco-14-background.png renders/sanfrancisco-14-water-mask.png \
	renders/sanfrancisco-14-grey-roads.png renders/sanfrancisco-14-city-names-halomask.png \
	renders/sanfrancisco-14-city-names.png renders/sanfrancisco-14-terrain.jpg \
	renders/sanfrancisco-14-terrain-background.jpg \
	renders/sanfrancisco-11-land-cover.jpg renders/sanfrancisco-11-hillshading.jpg \
	renders/sanfrancisco-11-background.png renders/sanfrancisco-11-water-mask.png \
	renders/sanfrancisco-11-grey-roads.png renders/sanfrancisco-11-city-names-halomask.png \
	renders/sanfrancisco-11-city-names.png renders/sanfrancisco-11-terrain.jpg \
	renders/sanfrancisco-11-terrain-background.jpg \
	renders/sanfrancisco-8-land-cover.jpg renders/sanfrancisco-8-hillshading.jpg \
	renders/sanfrancisco-8-background.png renders/sanfrancisco-8-water-mask.png \
	renders/sanfrancisco-8-grey-roads.png renders/sanfrancisco-8-city-names-halomask.png \
	renders/sanfrancisco-8-city-names.png renders/sanfrancisco-8-terrain.jpg \
	renders/sanfrancisco-8-terrain-background.jpg
	touch index.html



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

renders/sanfrancisco-14-terrain.jpg: background.xml cities.xml cities-halomask.xml style.xml
	tilestache-compose.py -c ../tilestache.cfg -l terrain -n $(SFO_LATLON) -z 14 -d 1024 512 $@

renders/sanfrancisco-14-terrain-background.jpg: background.xml
	tilestache-compose.py -c ../tilestache.cfg -l terrain-background -n $(SFO_LATLON) -z 14 -d 1024 512 $@


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

renders/sanfrancisco-11-terrain.jpg: background.xml cities.xml cities-halomask.xml style.xml
	tilestache-compose.py -c ../tilestache.cfg -l terrain -n $(SFO_LATLON) -z 11 -d 1024 512 $@

renders/sanfrancisco-11-terrain-background.jpg: background.xml
	tilestache-compose.py -c ../tilestache.cfg -l terrain-background -n $(SFO_LATLON) -z 11 -d 1024 512 $@


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

renders/sanfrancisco-8-terrain.jpg: background.xml cities.xml cities-halomask.xml style.xml
	tilestache-compose.py -c ../tilestache.cfg -l terrain -n $(SFO_LATLON) -z 8 -d 1024 512 $@

renders/sanfrancisco-8-terrain-background.jpg: background.xml
	tilestache-compose.py -c ../tilestache.cfg -l terrain-background -n $(SFO_LATLON) -z 8 -d 1024 512 $@



style.xml: style.mml stylesheet.mss routes.mss
	cascadenik-compile.py style.mml $@
	chmod a+r $@

background.xml: background.mml background.mss
	cascadenik-compile.py background.mml $@
	chmod a+r $@

cities.xml: cities.mml cities.mss routes.mss states.mss
	cascadenik-compile.py cities.mml $@
	chmod a+r $@

cities-halomask.xml: cities-halomask.mml cities.mss
	cascadenik-compile.py cities-halomask.mml $@
	chmod a+r $@

clean:
	rm -f renders/sanfrancisco-*.png
	rm -f renders/sanfrancisco-*.jpg
	rm -f style.xml
	rm -f background.xml
	rm -f cities.xml
	rm -f cities-halomask.xml
