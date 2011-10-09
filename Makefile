all: landcover-1km-tile.jpg

landcover-1km-rgb.tif: landcover-1km.tif landcover-1km-to-rgb.vrt
	gdal_translate -expand rgb -co COMPRESS=LZW landcover-1km-to-rgb.vrt landcover-1km-rgb.tif

landcover-1km-tile.jpg: landcover-1km-rgb.tif landcover-1km-to-merc.vrt
	gdalwarp -r cubicspline -t_srs EPSG:900913 -ts 512 512 -te -13697515 4539747 -13619243 4618018 landcover-1km-to-merc.vrt landcover-1km-tile.tif
	gdal_translate -of JPEG landcover-1km-tile.tif landcover-1km-tile.jpg
	rm -f landcover-1km-tile.tif