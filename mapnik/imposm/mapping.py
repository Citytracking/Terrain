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



# WHERE leisure IN ('park', 'water_park', 'marina', 'nature_reserve',
# 	                                   'playground', 'garden', 'common')
# 	                    OR amenity IN ('graveyard')
# 	                    OR landuse IN ('cemetery')
# 	                    OR leisure IN ('sports_centre', 'golf_course', 'stadium',
# 	                                   'track', 'pitch')
# 	                    OR landuse IN ('recreation_ground')
# 	                    OR landuse IN ('forest', 'wood')
# 	                 
# 	                 ORDER BY ST_Area(way) DESC

green_areas = Polygons(
    name = 'green_areas',
    fields = (
        ('area', PseudoArea()),
    ),
    mapping = {
        'leisure': ('park', 'water_park', 'marina', 'nature_reserve', 'playground', 'garden', 'common', 'sports_centre', 'golf_course', 'stadium', 'track', 'pitch'),
        'landuse': ('cemetery', 'park', 'water_park', 'marina', 'nature_reserve', 'playground', 'garden', 'common', 'forest', 'wood'),
        'amenity': ('graveyard')
    }
)

green_areas_z13 = GeneralizedTable(
    name = 'green_areas_z13',
    tolerance = zoom_threshold(13),
    origin = green_areas,
)

green_areas_z10 = GeneralizedTable(
    name = 'green_areas_z10',
    tolerance = zoom_threshold(10),
    origin = green_areas_z13,
)



# WHERE amenity IN ('school', 'college', 'university', 'bus_station',
#                   'ferry_terminal', 'hospital', 'kindergarten',
#                   'place_of_worship', 'public_building', 'townhall')
#    OR landuse IN ('industrial', 'commercial')

grey_areas = Polygons(
    name = 'grey_areas',
    fields = (
        ('area', PseudoArea()),
    ),
    mapping = {
        'amenity': ('school', 'college', 'university', 'bus_station', 'ferry_terminal', 'hospital', 'kindergarten', 'place_of_worship', 'public_building', 'townhall'),
        'landuse': ('industrial', 'commercial')
    }
)

grey_areas_z13 = GeneralizedTable(
    name = 'grey_areas_z13',
    tolerance = zoom_threshold(13),
    origin = grey_areas,
)

grey_areas_z10 = GeneralizedTable(
    name = 'grey_areas_z10',
    tolerance = zoom_threshold(10),
    origin = grey_areas_z13,
)



# WHERE building IS NOT NULL

buildings = Polygons(
    name = 'buildings',
    fields = (
        ('area', PseudoArea()),
    ),
    mapping = {
        'building': ('__any__',)
    }
)

buildings_z13 = GeneralizedTable(
    name = 'buildings_z13',
    tolerance = zoom_threshold(13),
    origin = buildings,
)

buildings_z10 = GeneralizedTable(
    name = 'buildings_z10',
    tolerance = zoom_threshold(10),
    origin = buildings_z13,
)



# WHERE aeroway IS NOT NULL

aeroways = LineStrings(
    name = 'aeroways',
    mapping = {
        'aeroway': ('__any__',)
    }
)

aeroways_z13 = GeneralizedTable(
    name = 'aeroways_z13',
    tolerance = zoom_threshold(13),
    origin = aeroways,
)

aeroways_z10 = GeneralizedTable(
    name = 'aeroways_z10',
    tolerance = zoom_threshold(10),
    origin = aeroways_z13,
)



# WHERE waterway IS NOT NULL

waterways = LineStrings(
    name = 'waterways',
    mapping = {
        'waterway': ('__any__',)
    }
)

waterways_z13 = GeneralizedTable(
    name = 'waterways_z13',
    tolerance = zoom_threshold(13),
    origin = waterways,
)

waterways_z10 = GeneralizedTable(
    name = 'waterways_z10',
    tolerance = zoom_threshold(10),
    origin = waterways_z13,
)
