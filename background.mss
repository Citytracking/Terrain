Map
{
    map-bgcolor: #e4e5d5;
    map-bgcolor: transparent;
}

#grey-areas
{
    polygon-fill: #f2f2ea;
}

#green-areas
{
    polygon-fill: #b6cfb9;
}

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
