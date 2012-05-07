Map
{ 
	map-bgcolor: transparent;
}

#place-names[zoom>=11][zoom<15][population>0] name,
#place-names[zoom>=11][zoom<15][place=city] name,
#place-names[zoom>=11][zoom<15][place=town] name,
#place-names[zoom>=15][zoom<17] name
{
    text-face-name: "PT Sans Narrow Regular";
    text-fill: #000;
}

#place-names[zoom>=12][zoom<17] name
{
    text-halo-fill: #f7f7e6;
    text-halo-radius: 2;
}

#place-names[font_size=18] name { text-size: 18; }
#place-names[font_size=24] name { text-size: 24; }
#place-names[font_size=32] name { text-size: 32; }

#airports[zoom=8][natlscale>2.3][type='big'],
#airports[zoom=9][natlscale>1.2][type='big'],
#airports[zoom=10][natlscale>.57][type='big'],
#airports[zoom=11][natlscale>.29][type='big'],
#airports[zoom=12][natlscale>.29][type='big'],
#airports[zoom=13][natlscale>.29][type='big']
{
    point-file: url('icons/airport_big_l.png');
}

#airports[zoom=14][natlscale>.29][type='big'],
#airports[zoom=15][natlscale>.29][type='big'],
#airports[zoom>=16][natlscale>.29][type='big']
{
    point-file: url('icons/airport_big_xl.png');
}

#airports[zoom=8][natlscale>2.3][type='little'],
#airports[zoom=9][natlscale>1.2][type='little'],
#airports[zoom=10][natlscale>.57][type='little'],
#airports[zoom=11][natlscale>.29][type='little'],
#airports[zoom=12][natlscale>.29][type='little'],
#airports[zoom=13][natlscale>.29][type='little']
{
    point-file: url('icons/airport_little_l.png');
}

#airports[zoom=14][natlscale>.29][type='little'],
#airports[zoom=15][natlscale>.29][type='little'],
#airports[zoom>=16][natlscale>.29][type='little']
{
    point-file: url('icons/airport_little_xl.png');
}

#airports[zoom=8][natlscale>2.3][type='military'],
#airports[zoom=9][natlscale>1.2][type='military'],
#airports[zoom=10][natlscale>.57][type='military'],
#airports[zoom=11][natlscale>.29][type='military'],
#airports[zoom=12][natlscale>.29][type='military'],
#airports[zoom=13][natlscale>.29][type='military']
{
    point-file: url('icons/airport_military_l.png');
}

#airports[zoom=14][natlscale>.29][type='military'],
#airports[zoom=15][natlscale>.29][type='military'],
#airports[zoom>=16][natlscale>.29][type='military']
{
    point-file: url('icons/airport_military_xl.png');
}

#airports[zoom=8][natlscale>2.3][type='space'],
#airports[zoom=9][natlscale>1.2][type='space'],
#airports[zoom=10][natlscale>.57][type='space'],
#airports[zoom=11][natlscale>.29][type='space'],
#airports[zoom=12][natlscale>.29][type='space'],
#airports[zoom=13][natlscale>.29][type='space']
{
    point-file: url('icons/intergalactic_l.png');
}

#airports[zoom=14][natlscale>.29][type='space'],
#airports[zoom=15][natlscale>.29][type='space'],
#airports[zoom>=16][natlscale>.29][type='space']
{
    point-file: url('icons/intergalactic_xl.png');
}

#airports[zoom=8][natlscale>2.3],
#airports[zoom=9][natlscale>1.2],
#airports[zoom=10][natlscale>.57],
#airports[zoom=11][natlscale>.29],
#airports[zoom=12][natlscale>.29],
#airports[zoom=13][natlscale>.29]
{
    point-file: url('icons/airport_little_l.png');
}

#airports[zoom=14][natlscale>.29],
#airports[zoom=15][natlscale>.29],
#airports[zoom>=16][natlscale>.29]
{
    point-file: url('icons/airport_little_xl.png');
}

/*
#airports[zoom=2][natlscale>148] label_sm,
#airports[zoom=3][natlscale>74] label_sm,
#airports[zoom=4][natlscale>37] label_sm,
#airports[zoom=5][natlscale>18] label_sm,
#airports[zoom=6][natlscale>9.2] label_sm,
#airports[zoom=7][natlscale>4.6] label_sm,
#airports[zoom=8][natlscale>2.3] label_sm,
#airports[zoom=9][natlscale>1.2] label_sm,
*/
#airports[zoom=10][natlscale>.57] label_sm,
#airports[zoom=11][natlscale>.29] label_sm,
/*
#airports[zoom=12][natlscale>.14] label_sm,
#airports[zoom=13][natlscale>.07] label_lng,
#airports[zoom=14][natlscale>.04] label_lng,
#airports[zoom=15][natlscale>.02] label_lng,
#airports[zoom>=16][natlscale>.01] label_lng
*/
#airports[zoom=12][natlscale>.29] label_sm,
#airports[zoom=13][natlscale>.29] label_lng,
#airports[zoom=14][natlscale>.29] label_lng,
#airports[zoom=15][natlscale>.29] label_lng,
#airports[zoom>=16][natlscale>.29] label_lng
{
    text-face-name: 'PT Sans Narrow Regular';
    text-fill: #444;
    text-size: 18;
    
    text-halo-fill: #f7f7e6;
    text-halo-radius: 2;
    
    text-wrap-width: 128;
    text-dy: 12;
}

#airports[zoom=14][natlscale>.04] label_lng,
#airports[zoom=15][natlscale>.02] label_lng,
#airports[zoom>=16][natlscale>.01] label_lng
{
    text-dy: 20;
}

/*
#road-labels[highway=trunk][zoom>=12] name_abbr,
#road-labels[highway=primary][zoom>=12] name_abbr,
#road-labels[highway=secondary][zoom>=12] name_abbr,
#road-labels[highway=tertiary][zoom>=13] name_abbr,
#road-labels[zoom>=15] name_abbr
*/
#road-labels-skeletron[show_zoom=12][zoom=12] name_abbr,
#road-labels-skeletron[show_zoom=13][zoom=13] name_abbr,
#road-labels-skeletron[show_zoom=14][zoom=14] name_abbr,
#road-labels-skeletron[show_zoom=15][zoom>=15] name_abbr,
#road-labels-full[zoom>=15] name_abbr
{
    text-spacing: 256;
    text-placement: line;
    text-max-char-angle-delta: 20;

    text-face-name: 'PT Sans Narrow Regular';
    text-fill: #444;
    text-size: 18;
    
    text-halo-fill: #f7f7e6;
    text-halo-radius: 2;
}

#road-labels-full[zoom>=15] name_abbr
{
    text-size: 15;
}

#green-areas[zoom=8][sq_km>209.72][sq_km<3276800] name,
#green-areas[zoom=9][sq_km>52.4288][sq_km<819200] name,
#green-areas[zoom=10][sq_km>13.107][sq_km<204800] name
{
    text-face-name: 'PT Sans Narrow Regular';
    text-fill: #374c30;
    text-size: 15;
    
    text-wrap-width: 96;
}

#green-areas[zoom=11][sq_km>3.2768][sq_km<51200] name,
#green-areas[zoom=12][sq_km>0.8192][sq_km<25600] name,
#green-areas[zoom=13][sq_km>0.2048][sq_km<12800] name,
#green-areas[zoom=14][sq_km>0.0512][sq_km<6400] name,
#green-areas[zoom=15][sq_km>0.0128][sq_km<3200] name,
#green-areas[zoom=16][sq_km>0.0064][sq_km<1600] name,
#green-areas[zoom=17][sq_km>0.0032][sq_km<800] name,
#green-areas[zoom=18][sq_km>0.0016][sq_km<400] name,
#green-areas[zoom>=19][sq_km<200] name
{
    text-face-name: 'PT Sans Narrow Regular';
    text-fill: #586e50;
    text-size: 18;
    
    text-wrap-width: 96;
    text-halo-fill: #f7ffdc;
    text-halo-radius: 2;
}

#green-areas[zoom<15] name { text-size: 15 !important; }
#green-areas[zoom<12] name { text-halo-fill: #d8f1ce !important; }
