Map
{
    map-bgcolor: #e4e5d5;
    map-bgcolor: transparent;
}

#grey-areas[zoom>=9]
{
    polygon-fill: #f2f2ea;
}

#green-areas[zoom>=9]
{
    polygon-fill: #b6cfb9;
}

#aeroways
{
    line-color: #c8cebe;
    line-cap: square;
    line-join: miter;
}

#aeroways[aeroway=runway][zoom=10] { line-width: 1; }
#aeroways[aeroway=runway][zoom=11] { line-width: 1.5; }
#aeroways[aeroway=runway][zoom=12] { line-width: 2; }
#aeroways[aeroway=runway][zoom=13] { line-width: 4; }
#aeroways[aeroway=runway][zoom=14] { line-width: 8; }
#aeroways[aeroway=runway][zoom=15] { line-width: 16; }
#aeroways[aeroway=runway][zoom=16] { line-width: 32; }
#aeroways[aeroway=runway][zoom=17] { line-width: 64; }
#aeroways[aeroway=runway][zoom>=18] { line-width: 128; }

#aeroways[aeroway=taxiway][zoom=13] { line-width: 1; }
#aeroways[aeroway=taxiway][zoom=14] { line-width: 2; }
#aeroways[aeroway=taxiway][zoom=15] { line-width: 4; }
#aeroways[aeroway=taxiway][zoom=16] { line-width: 8; }
#aeroways[aeroway=taxiway][zoom=17] { line-width: 16; }
#aeroways[aeroway=taxiway][zoom>=18] { line-width: 32; }

#buildings[zoom>=12]
{
    polygon-fill: #bfcfcd;
    line-color: #b0c0be;
    line-width: 1;
}

#waterways
{
    line-color: #a6c9eb;
}

#waterways[zoom=13] { line-width: 1; }
#waterways[zoom=14] { line-width: 2; }
#waterways[zoom>=15] { line-width: 3; }
