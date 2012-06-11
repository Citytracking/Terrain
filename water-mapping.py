from imposm.mapping import Options, Polygons, LineStrings, PseudoArea, GeneralizedTable, meter_to_mapunit

def zoom_threshold(zoom):
    return meter_to_mapunit(20037508.0 * 2 / (2**(8 + zoom)))

db_conf = Options(
    db='terrain',
    host='localhost',
    port=5432,
    user='terrain',
    password='',
    sslmode='allow',
    prefix='osm_new_',
    proj='epsg:900913',
)



# WHERE "natural" IN ('water', 'bay')
# 	 OR waterway = 'riverbank'
# 	 OR landuse = 'reservoir'

water_areas = Polygons(
    name = 'water_areas',
    fields = (
        ('area', PseudoArea()),
    ),
    mapping = {
        'natural': ('water', 'bay'),
        'waterway': ('riverbank',),
        'landuse': ('reservoir',)
    }
)

water_areas_z13 = GeneralizedTable(
    name = 'water_areas_z13',
    tolerance = zoom_threshold(13),
    origin = water_areas,
)

water_areas_z10 = GeneralizedTable(
    name = 'water_areas_z10',
    tolerance = zoom_threshold(10),
    origin = water_areas_z13,
)
