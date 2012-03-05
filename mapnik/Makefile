SFO_LATLON = 37.816293 -122.202987
NYC_LATLON = 40.756749 -73.998284
LON_LATLON = 51.507553 -0.008271
MOS_LATLON = 55.882322 37.724175

all: index.html background.xml cities.xml labels.xml cities-halomask.xml

index.html: \
	renders/sanfrancisco-14-background.png renders/sanfrancisco-14-water-mask.png \
	renders/sanfrancisco-14-grey-roads.png renders/sanfrancisco-14-city-names-halomask.png \
	renders/sanfrancisco-14-city-names.png \
	renders/sanfrancisco-14-lines.png \
	renders/sanfrancisco-14-labels.png \
	renders/sanfrancisco-14-labels-halomask.png \
	renders/sanfrancisco-11-background.png renders/sanfrancisco-11-water-mask.png \
	renders/sanfrancisco-11-grey-roads.png renders/sanfrancisco-11-city-names-halomask.png \
	renders/sanfrancisco-11-city-names.png \
	renders/sanfrancisco-11-lines.png \
	renders/sanfrancisco-11-labels.png \
	renders/sanfrancisco-11-labels-halomask.png \
	renders/sanfrancisco-8-background.png renders/sanfrancisco-8-water-mask.png \
	renders/sanfrancisco-8-grey-roads.png renders/sanfrancisco-8-city-names-halomask.png \
	renders/sanfrancisco-8-city-names.png \
	renders/sanfrancisco-8-lines.png \
	renders/sanfrancisco-8-labels.png \
	renders/sanfrancisco-8-labels-halomask.png
	touch index.html



renders/sanfrancisco-14-background.png: background.xml
	python mapnik-render.py -f fonts -s background.xml -l $(NYC_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-water-mask.png:
	python mapnik-render.py -f fonts -s water-mask.xml -l $(NYC_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-grey-roads.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(NYC_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-city-names-halomask.png: cities-halomask.xml
	python mapnik-render.py -f fonts -s cities-halomask.xml -l $(NYC_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-city-names.png: cities.xml
	python mapnik-render.py -f fonts -s cities.xml -l $(NYC_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-lines.png: lines.xml
	python mapnik-render.py -f fonts -s lines.xml -l $(NYC_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-labels.png: labels.xml
	python mapnik-render.py -f fonts -s labels.xml -l $(NYC_LATLON) -z 14 -d 1024 512 -o $@

renders/sanfrancisco-14-labels-halomask.png: labels-halomask.xml
	python mapnik-render.py -f fonts -s labels-halomask.xml -l $(NYC_LATLON) -z 14 -d 1024 512 -o $@


renders/sanfrancisco-11-background.png: background.xml
	python mapnik-render.py -f fonts -s background.xml -l $(NYC_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-water-mask.png:
	python mapnik-render.py -f fonts -s water-mask.xml -l $(NYC_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-grey-roads.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(NYC_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-city-names-halomask.png: cities-halomask.xml
	python mapnik-render.py -f fonts -s cities-halomask.xml -l $(NYC_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-city-names.png: cities.xml
	python mapnik-render.py -f fonts -s cities.xml -l $(NYC_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-lines.png: lines.xml
	python mapnik-render.py -f fonts -s lines.xml -l $(NYC_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-labels.png: labels.xml
	python mapnik-render.py -f fonts -s labels.xml -l $(NYC_LATLON) -z 11 -d 1024 512 -o $@

renders/sanfrancisco-11-labels-halomask.png: labels-halomask.xml
	python mapnik-render.py -f fonts -s labels-halomask.xml -l $(NYC_LATLON) -z 11 -d 1024 512 -o $@


renders/sanfrancisco-8-background.png: background.xml
	python mapnik-render.py -f fonts -s background.xml -l $(NYC_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-water-mask.png:
	python mapnik-render.py -f fonts -s water-mask.xml -l $(NYC_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-grey-roads.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l $(NYC_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-city-names-halomask.png: cities-halomask.xml
	python mapnik-render.py -f fonts -s cities-halomask.xml -l $(NYC_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-city-names.png: cities.xml
	python mapnik-render.py -f fonts -s cities.xml -l $(NYC_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-lines.png: lines.xml
	python mapnik-render.py -f fonts -s lines.xml -l $(NYC_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-labels.png: labels.xml
	python mapnik-render.py -f fonts -s labels.xml -l $(NYC_LATLON) -z 8 -d 1024 512 -o $@

renders/sanfrancisco-8-labels-halomask.png: labels-halomask.xml
	python mapnik-render.py -f fonts -s labels-halomask.xml -l $(NYC_LATLON) -z 8 -d 1024 512 -o $@



style.xml: style.mml stylesheet.mss routes.mss
	cascadenik-compile.py style.mml $@
	chmod a+r $@

background.xml: background.mml background.mss
	cascadenik-compile.py background.mml $@
	chmod a+r $@

cities.xml: cities.mml cities.mss routes.mss states.mss
	cascadenik-compile.py cities.mml $@
	chmod a+r $@

labels.xml: labels.mml labels.mss cities.mss states.mss routes.mss
	cascadenik-compile.py labels.mml $@
	chmod a+r $@

cities-halomask.xml: cities-halomask.mml cities.mss
	cascadenik-compile.py cities-halomask.mml $@
	chmod a+r $@

labels-halomask.xml: labels-halomask.mml labels.mss cities.mss states.mss routes.mss
	cascadenik-compile.py labels-halomask.mml $@
	chmod a+r $@

lines.xml: lines.mml lines.mss states.mss
	cascadenik-compile.py lines.mml $@
	chmod a+r $@
