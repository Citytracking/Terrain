SFO_LATLON = 37.816293 -122.202987
NYC_LATLON = 40.756749 -73.998284
LON_LATLON = 51.507553 -0.008271
MOS_LATLON = 55.882322 37.724175

all: renders.html mapnik/background.xml mapnik/labels.xml mapnik/labels-halomask.xml mapnik/lines.xml

renders.html: \
	renders/sanfrancisco-14-land-cover.jpg renders/sanfrancisco-14-hillshading.jpg \
	renders/sanfrancisco-14-terrain.jpg renders/sanfrancisco-14-terrain-background.jpg \
	renders/sanfrancisco-11-land-cover.jpg renders/sanfrancisco-11-hillshading.jpg \
	renders/sanfrancisco-11-terrain.jpg renders/sanfrancisco-11-terrain-background.jpg \
	renders/sanfrancisco-8-land-cover.jpg renders/sanfrancisco-8-hillshading.jpg \
	renders/sanfrancisco-8-terrain.jpg renders/sanfrancisco-8-terrain-background.jpg
	touch renders.html



renders/sanfrancisco-14-land-cover.jpg:
	tilestache-compose.py -c tilestache.cfg -l land-cover -n $(SFO_LATLON) -z 14 -d 1024 512 $@

renders/sanfrancisco-14-hillshading.jpg:
	tilestache-compose.py -c tilestache.cfg -l hillshading -n $(SFO_LATLON) -z 14 -d 1024 512 $@

renders/sanfrancisco-14-terrain.jpg: mapnik/background.xml mapnik/labels.xml mapnik/labels-halomask.xml mapnik/lines.xml
	tilestache-compose.py -c tilestache.cfg -l terrain -n $(SFO_LATLON) -z 14 -d 1024 512 $@

renders/sanfrancisco-14-terrain-background.jpg: mapnik/background.xml
	tilestache-compose.py -c tilestache.cfg -l terrain-background -n $(SFO_LATLON) -z 14 -d 1024 512 $@


renders/sanfrancisco-11-land-cover.jpg:
	tilestache-compose.py -c tilestache.cfg -l land-cover -n $(SFO_LATLON) -z 11 -d 1024 512 $@

renders/sanfrancisco-11-hillshading.jpg:
	tilestache-compose.py -c tilestache.cfg -l hillshading -n $(SFO_LATLON) -z 11 -d 1024 512 $@

renders/sanfrancisco-11-terrain.jpg: mapnik/background.xml mapnik/labels.xml mapnik/labels-halomask.xml mapnik/lines.xml
	tilestache-compose.py -c tilestache.cfg -l terrain -n $(SFO_LATLON) -z 11 -d 1024 512 $@

renders/sanfrancisco-11-terrain-background.jpg: mapnik/background.xml
	tilestache-compose.py -c tilestache.cfg -l terrain-background -n $(SFO_LATLON) -z 11 -d 1024 512 $@


renders/sanfrancisco-8-land-cover.jpg:
	tilestache-compose.py -c tilestache.cfg -l land-cover -n $(SFO_LATLON) -z 8 -d 1024 512 $@

renders/sanfrancisco-8-hillshading.jpg:
	tilestache-compose.py -c tilestache.cfg -l hillshading -n $(SFO_LATLON) -z 8 -d 1024 512 $@

renders/sanfrancisco-8-terrain.jpg: mapnik/background.xml mapnik/labels.xml mapnik/labels-halomask.xml mapnik/lines.xml
	tilestache-compose.py -c tilestache.cfg -l terrain -n $(SFO_LATLON) -z 8 -d 1024 512 $@

renders/sanfrancisco-8-terrain-background.jpg: mapnik/background.xml
	tilestache-compose.py -c tilestache.cfg -l terrain-background -n $(SFO_LATLON) -z 8 -d 1024 512 $@



mapnik/background.xml: mapnik/background.mml mapnik/background.mss
	cascadenik-compile.py mapnik/background.mml $@
	chmod a+r $@

mapnik/labels.xml: mapnik/labels.mml mapnik/labels.mss mapnik/cities.mss mapnik/states.mss mapnik/routes.mss
	cascadenik-compile.py mapnik/labels.mml $@
	chmod a+r $@

mapnik/labels-halomask.xml: mapnik/labels-halomask.mml mapnik/labels.mss mapnik/cities.mss mapnik/states.mss mapnik/routes.mss
	cascadenik-compile.py mapnik/labels-halomask.mml $@
	chmod a+r $@

mapnik/lines.xml: mapnik/lines.mml mapnik/lines.mss mapnik/states.mss
	cascadenik-compile.py mapnik/lines.mml $@
	chmod a+r $@
