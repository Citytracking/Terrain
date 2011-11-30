#skeletron-routes ref
{
    shield-spacing: 384;
    shield-face-name: 'PT Sans Narrow Bold';
    shield-size: 11;
}

#skeletron-routes[ref_len<=2] ref
{
    shield-size: 13;
}

#skeletron-routes[show_zoom=10][zoom=9][network="US:I"] ref,
#skeletron-routes[show_zoom=10][zoom=10][network="US:I"] ref,
#skeletron-routes[show_zoom=11][zoom=11][network="US:I"] ref,
#skeletron-routes[show_zoom=12][zoom=12][network="US:I"] ref,
#skeletron-routes[show_zoom=13][zoom=13][network="US:I"] ref,
#skeletron-routes[show_zoom=14][zoom=14][network="US:I"] ref,
#skeletron-routes[show_zoom=15][zoom=15][network="US:I"] ref,
#skeletron-routes[show_zoom=16][zoom>=16][network="US:I"] ref
{
    shield-file: url('shields/US-I-25.png');
    shield-fill: #fff;
}

#skeletron-routes[show_zoom=10][zoom=9][network="US:US"] ref,
#skeletron-routes[show_zoom=10][zoom=10][network="US:US"] ref,
#skeletron-routes[show_zoom=11][zoom=11][network="US:US"] ref,
#skeletron-routes[show_zoom=12][zoom=12][network="US:US"] ref,
#skeletron-routes[show_zoom=13][zoom=13][network="US:US"] ref,
#skeletron-routes[show_zoom=14][zoom=14][network="US:US"] ref,
#skeletron-routes[show_zoom=15][zoom=15][network="US:US"] ref,
#skeletron-routes[show_zoom=16][zoom>=16][network="US:US"] ref
{
    shield-file: url('shields/US-US-25.png');
    shield-fill: #000;
}

#skeletron-routes[show_zoom=10][zoom=10][is_state=1][highway=motorway] ref,
#skeletron-routes[show_zoom=12][zoom=12][is_state=1][highway!=motorway] ref
{
    shield-file: url('shields/state-13.png');
    shield-fill: #fff;
    shield-size: 1;
}

#skeletron-routes[show_zoom=11][zoom=11][is_state=1][highway=motorway] ref,
#skeletron-routes[show_zoom=12][zoom=12][is_state=1][highway=motorway] ref,
#skeletron-routes[show_zoom=13][zoom=13][is_state=1] ref,
#skeletron-routes[show_zoom=14][zoom=14][is_state=1] ref,
#skeletron-routes[show_zoom=15][zoom=15][is_state=1] ref,
#skeletron-routes[show_zoom=16][zoom>=16][is_state=1] ref
{
    shield-file: url('shields/state-27.png');
    shield-fill: #000;
}

#skeletron-routes[show_zoom=10][zoom=10][network="US:CA"][highway=motorway] ref,
#skeletron-routes[show_zoom=12][zoom=12][network="US:CA"][highway!=motorway] ref
{
    shield-file: url('shields/US-CA-13.png');
    shield-fill: #368c7c;
    shield-size: 1;
}

#skeletron-routes[show_zoom=11][zoom=11][network="US:CA"][highway=motorway] ref,
#skeletron-routes[show_zoom=12][zoom=12][network="US:CA"][highway=motorway] ref,
#skeletron-routes[show_zoom=13][zoom=13][network="US:CA"] ref,
#skeletron-routes[show_zoom=14][zoom=14][network="US:CA"] ref,
#skeletron-routes[show_zoom=15][zoom=15][network="US:CA"] ref,
#skeletron-routes[show_zoom=16][zoom>=16][network="US:CA"] ref
{
    shield-file: url('shields/US-CA-25.png');
    shield-fill: #fff;
}
