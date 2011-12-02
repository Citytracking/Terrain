all: landcover-1km-merc-z2.tif landcover-1km-tile.jpg

#
# This is the important one.
#
landcover-1km-merc-tiles.vrt: landcover-1km-rgb.tif landcover-1km-to-merc.vrt
	rm -rf tiles/*.tif
	python tile-out.py tiles | sh
	gdalbuildvrt merc-tiles-progress.vrt tiles/*.tif
	perl -pi -e 's/relativeToVRT="0"/relativeToVRT="1"/' merc-tiles-progress.vrt
	chmod +r merc-tiles-progress.vrt
	mv merc-tiles-progress.vrt landcover-1km-merc-tiles.vrt

landcover-1km-merc-z6.tif: landcover-1km-merc-tiles.vrt
	gdalwarp -tr 2445.985 2445.985 -r bilinear -co COMPRESS=JPEG landcover-1km-merc-tiles.vrt landcover-1km-merc-z6-progress.tif
	mv landcover-1km-merc-z6-progress.tif landcover-1km-merc-z6.tif

landcover-1km-merc-z4.tif: landcover-1km-merc-z6.tif
	gdalwarp -tr 4891.970 4891.970 -r bilinear -co COMPRESS=JPEG landcover-1km-merc-z6.tif landcover-1km-merc-z4-progress.tif
	mv landcover-1km-merc-z4-progress.tif landcover-1km-merc-z4.tif

landcover-1km-merc-z2.tif: landcover-1km-merc-z4.tif
	gdalwarp -tr 19567.879 19567.879 -r bilinear -co COMPRESS=JPEG landcover-1km-merc-z4.tif landcover-1km-merc-z2-progress.tif
	mv landcover-1km-merc-z2-progress.tif landcover-1km-merc-z2.tif

#
# The tile is just a nice preview.
#
landcover-1km-tile.jpg: landcover-1km-merc-z6.tif
	gdalwarp -r cubicspline -t_srs EPSG:900913 -ts 512 512 -te -13697515 4539747 -13619243 4618018 landcover-1km-merc-z6.tif landcover-1km-tile.tif
	gdal_translate -of JPEG landcover-1km-tile.tif landcover-1km-tile.jpg
	rm -f landcover-1km-tile.tif