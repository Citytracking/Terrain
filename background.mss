Map
{
    map-bgcolor: #e4e5d5;
    map-bgcolor: transparent;
}

#grey-areas[zoom>=9]
{
    polygon-fill: #f2f2ea;
}

/*
#green-areas[zoom=8][sq_km>=3200],
#green-areas[zoom=9][sq_km>=1600],
#green-areas[zoom=10][sq_km>=800],
#green-areas[zoom=11][sq_km>=400],
#green-areas[zoom=12][sq_km>=200],
#green-areas[zoom=13][sq_km>=100],
#green-areas[zoom=14][sq_km>=50],
#green-areas[zoom=15][sq_km>=25],
#green-areas[zoom=16][sq_km>=13],
#green-areas[zoom=17][sq_km>=6],
#green-areas[zoom=18][sq_km>=3]
{
    line-width: 4;
    line-color: #b6cfb9;
    line-join: miter;
}
*/

#green-areas[zoom=8][sq_km>0.0256][sq_km<6400],
#green-areas[zoom=9][sq_km>0.0128][sq_km<3200],
#green-areas[zoom=10][sq_km>0.0064][sq_km<1600],
#green-areas[zoom=11][sq_km>0.0032][sq_km<800],
#green-areas[zoom=12][sq_km>0.0016][sq_km<400],
#green-areas[zoom>=13][sq_km<200]
{
    polygon-fill: #c1d4b4;
    polygon-opacity: 0.5;
}

/* lighten color as we zoom out to blend with background */
#green-areas[zoom=10][sq_km>0.0064][sq_km<1600] { polygon-fill: #b7ccab; }
#green-areas[zoom=9][sq_km>0.0128][sq_km<3200]  { polygon-fill: #adc2a1; }
#green-areas[zoom=8][sq_km>0.0256][sq_km<6400]  { polygon-fill: #a1b997; }

#green-areas[zoom=8][sq_km>0.0128][sq_km<3200],
#green-areas[zoom=9][sq_km>0.0064][sq_km<1600],
#green-areas[zoom=10][sq_km>0.0032][sq_km<800],
#green-areas[zoom=11][sq_km>0.0016][sq_km<400],
#green-areas[zoom=12][sq_km>0.0008][sq_km<200],
#green-areas[zoom>=13][sq_km<100]
{
    polygon-opacity: 1.0;
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
