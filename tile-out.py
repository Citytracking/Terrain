from sys import argv
from urlparse import urlparse
from os.path import splitext

from ModestMaps.Core import Coordinate, Point
from ModestMaps.OpenStreetMap import Provider
from TileStache.Geography import SphericalMercator

mercator = SphericalMercator()
zoom, scale = 6, 611.496226
output_dir = argv[1]

hrefs = ['http://b.tile.openstreetmap.org/6/0/20.png',
         'http://a.tile.openstreetmap.org/6/4/13.png',
         'http://a.tile.openstreetmap.org/6/20/28.png',
         'http://b.tile.openstreetmap.org/6/22/22.png',
         'http://c.tile.openstreetmap.org/6/15/28.png']

paths = [urlparse(href).path for href in hrefs]
tiles = [splitext(path)[0].lstrip('/') for path in paths]
values = [map(int, tile.split('/', 2)) for tile in tiles]
rows, cols = zip(*[(y, x) for (z, x, y) in values])

rows_cols = []

for row in range(min(rows), max(rows) + 1):
    for col in range(min(cols), max(cols) + 1):
        rows_cols.append((row, col))

for (index, (row, col)) in enumerate(rows_cols):
    coord = Coordinate(row, col, zoom)

    filename = '%(output_dir)s/%(zoom)d-%(col)d-%(row)d.tif' % locals()
    print 'echo', '-' * 80, index, 'of', len(rows_cols), filename

    ll = mercator.coordinateProj(coord.down())
    ur = mercator.coordinateProj(coord.right())
    
    print 'gdalwarp',
    print '-t_srs "+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext +no_defs +over"',
    print '-te', ll.x, ll.y, ur.x, ur.y,
    print '-tr', scale, scale,
    print '-tps -r cubicspline',
    print '-co COMPRESS=JPEG',
    print 'landcover-1km-to-merc.vrt',
    print filename
