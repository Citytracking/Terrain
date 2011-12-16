Map
{
    map-bgcolor: transparent;
}

#places-z4[zoom=4][point_size=5],
#places-z5[zoom=5][point_size=5],
#places-z6[zoom=6][point_size=5],
#places-z7[zoom=7][point_size=5],
#places-z8[zoom=8][point_size=5],
#places-z9[zoom=9][point_size=5],
#places-z10[zoom=10][point_size=5]
{
    point-file: url("cities/dot-5.png");
}

#places-z4[zoom=4][point_size=7],
#places-z5[zoom=5][point_size=7],
#places-z6[zoom=6][point_size=7],
#places-z7[zoom=7][point_size=7],
#places-z8[zoom=8][point_size=7],
#places-z9[zoom=9][point_size=7],
#places-z10[zoom=10][point_size=7]
{
    point-file: url("cities/dot-7.png");
}

#labels-z4[zoom=4] name,
#labels-z5[zoom=5] name,
#labels-z6[zoom=6] name,
#labels-z7[zoom=7] name,
#labels-z8[zoom=8] name,
#labels-z9[zoom=9] name,
#labels-z10[zoom=10] name
{
    text-face-name: "PT Sans Narrow Regular";
    text-fill: #000;
}

.labels[font_size=13] name { text-size: 13; }
.labels[font_size=18] name { text-size: 18; }
.labels[font_size=24] name { text-size: 24; }
.labels[font_size=32] name { text-size: 32; }

#green-areas[zoom=8][sq_km>209.72][sq_km<3276800] name,
#green-areas[zoom=9][sq_km>52.4288][sq_km<819200] name,
#green-areas[zoom=10][sq_km>13.107][sq_km<204800] name
{
    text-face-name: 'PT Sans Narrow Regular';
    text-fill: #374c30;
    text-size: 15;
    
    text-wrap-width: 96;
}
