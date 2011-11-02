/*ocean*/
Map { 
	map-bgcolor: transparent; } 

#buildings[area>=16000][zoom=12],
#buildings[area>=8000][zoom=13],
#buildings[area>=4000][zoom=14],
#buildings[area>=2000][zoom=15],
#buildings[area>=1000][zoom=16],
#buildings[zoom>=17]
{
    polygon-fill: #bfcfcd;
    line-color: #b0c0be;
    line-width: 1;
}

/*//////// Base line styles */

.roads {
	line-join: round;
	line-cap: round;
}

.roads[render=outline],
.roads[render=casing]
{
    line-cap: butt;
}

.roads[zoom>=13][is_tunnel=yes][render=outline],
.roads[zoom>=13][is_tunnel=yes][render=casing]
{
    line-opacity: 0.2;
}

.roads[zoom>=15][is_tunnel=yes][render=inline]
{
    line-opacity: 0.0;
}


/*//////// Colors */

.roads[kind=highway][render=inline]
{
	line-color: #666;
}

.roads[kind=highway][render=outline]
{
	line-color: #fff;
}

.roads[kind=major_road][render=inline]
{
	line-color: #999;
}

.roads[kind=major_road][render=inline][zoom<=10]
{
	line-color: #aaa;
}

.roads[kind=major_road][render=outline]
{
	line-color: #fff;
}

.roads[kind=minor_road][render=inline]
{
	line-color: #999;
}

.roads[kind=minor_road][render=inline][zoom<=13]
{
	line-color: #aaa;
}

.roads[kind=minor_road][render=outline]
{
	line-color: #fff;
}

.roads[kind=rail][render=inline],
.roads[kind=rail][render=casing],
.roads[kind=rail][render=outline]
{
	line-color: #aaa;
}

.roads[kind=path][render=inline]
{
	line-color: #666;
	line-dasharray: 2,5;
}

/*//////// Zoom Level 10 */

#z10-roads[zoom=10][kind=highway][render=inline]
{ 	
	line-width: 2;
}

#z10-roads[zoom=10][kind=highway][render=outline]
{ 	
	line-width: 3.5;
}

#z10-roads[zoom=10][kind=major_road][render=inline]
{ 	
	line-width: 2;
}

#z10-roads[zoom=10][kind=minor_road][render=inline]
{ 	
	line-width: 1; 
}

/*//////// Zoom Level 11 */

#z11-roads[zoom=11][kind=highway][render=inline]
{ 	
	line-width: 3;
}

#z11-roads[zoom=11][kind=highway][render=outline]
{ 	
	line-width: 5; 
}

#z11-roads[zoom=11][kind=major_road][render=inline]
{ 	
	line-width: 2; 
}

#z11-roads[zoom=11][kind=major_road][render=outline]
{ 	
	line-width: 4; 
}

#z11-roads[zoom=11][kind=minor_road][render=inline]
{ 	
	line-width: 1; 
}

/*//////// Zoom Level 12 */

#z12-roads[zoom=12][kind=highway][is_link=no][render=inline]
{ 	
	line-width: 3;
}

#z12-roads[zoom=12][kind=highway][is_link=no][render=outline]
{ 	
	line-width: 5;
}

#z12-roads[zoom=12][kind=major_road][render=inline]
{ 	
	line-width: 2; 
}

#z12-roads[zoom=12][kind=major_road][render=outline]
{ 	
	line-width: 4;
}

#z12-roads[zoom=12][kind=minor_road][render=inline]
{ 	
	line-width: 1;
}

#z12-roads[zoom=12][is_link=yes][render=inline]
{ 	
	line-width: 1;
}

/*//////// Zoom Level 13 */

#z13-roads[zoom=13][kind=highway][is_link=no][render=inline]
{ 
	line-width: 4;
}

#z13-roads[zoom=13][kind=highway][is_link=no][render=outline]
{ 
	line-width: 8;
}

#z13-roads[zoom=13][kind=highway][is_link=yes][render=inline]
{ 
	line-width: 1;	
}

#z13-roads[zoom=13][kind=highway][is_link=yes][is_bridge=yes][render=outline]
{ 
	line-width: 3;
}

#z13-roads[zoom=13][kind=highway][is_link=yes][render=inline]
{ 
	line-width: 1;	
}

#z13-roads[zoom=13][kind=highway][is_link=yes][render=outline]
{ 
	line-width: 5;
}

#z13-roads[zoom=13][kind=major_road][render=inline]
{ 	
	line-width: 3;
}

#z13-roads[zoom=13][kind=major_road][is_link=no][render=outline]
{ 
	line-width: 5;
}

#z13-roads[zoom=13][kind=minor_road][render=inline]
{
 	line-width: 1.5;
}

/*//////// Zoom Level 14 */

#z14-roads[zoom=14][kind=highway][render=inline]
{
	line-width: 4;
}

#z14-roads[zoom=14][kind=highway][render=outline]
{
	line-width: 8;
}

#z14-roads[zoom=14][kind=highway][is_link=yes][render=inline]
{
	line-width: 2.5;	
}

#z14-roads[zoom=14][kind=highway][is_link=yes][render=outline]
{
	line-width: 6;
}

#z14-roads[zoom=14][kind=major_road][render=inline]
{
	line-width: 4;
}

#z14-roads[zoom=14][kind=major_road][render=outline]
{
	line-width: 6;
}

#z14-roads[zoom=14][kind=major_road][is_link=yes][render=inline]
{
	line-width: 2;
}

#z14-roads[zoom=14][kind=major_road][is_link=yes][render=outline]
{
	line-width: 5;
}

#z14-roads[zoom=14][kind=minor_road][render=inline]
{
	line-width: 2.5;
}

#z14-roads[zoom=14][kind=minor_road][render=outline]
{
	line-width: 3.5;
}

#z14-roads[zoom=14][kind=rail][render=inline]
{
	line-width: 1;
}

#z14-roads[zoom=14][kind=rail][render=casing]
{
	line-width: 3;
	line-dasharray: 1,3;
	line-cap: butt;
}

/*//////// Zoom Level 15 */

#z15plus-roads[zoom=15][kind=highway][render=inline]
{
	line-width: 6;
}

#z15plus-roads[zoom=15][kind=highway][render=outline]
{
	line-width: 11;
}

#z15plus-roads[zoom=15][kind=highway][is_link=yes][render=inline]
{
	line-width: 3;	
}

#z15plus-roads[zoom=15][kind=highway][is_link=yes][render=outline]
{
	line-width: 6.5;
}

#z15plus-roads[zoom=15][kind=major_road][render=inline]
{
	line-width: 5;
}

#z15plus-roads[zoom=15][kind=major_road][render=outline]
{
	line-width: 8;
}

#z15plus-roads[zoom=15][kind=major_road][is_link=yes][render=inline]
{
	line-width: 2.5;
}

#z15plus-roads[zoom=15][kind=major_road][is_link=yes][render=outline]
{
	line-width: 5.5;
}

#z15plus-roads[zoom=15][kind=minor_road][render=inline]
{
	line-width: 4;
}

#z15plus-roads[zoom=15][kind=minor_road][render=outline]
{
	line-width: 6;
}

#z15plus-roads[zoom=15][highway=service][render=inline]
{
	line-width: 2.5;
}

#z15plus-roads[zoom=15][highway=service][render=outline]
{
	line-width: 3.5;
}

#z15plus-roads[zoom=15][kind=rail][render=inline]
{
	line-width: 1;
}

#z15plus-roads[zoom=15][kind=rail][render=casing]
{
	line-width: 3;
	line-dasharray: 1,3;
	line-cap: butt;
}

#z15plus-roads[zoom=15][kind=path][render=inline]
{
	line-width: 1; 
	line-dasharray: 2,3;
	line-cap: butt;
}

/*//////// Zoom Level 16 */

#z15plus-roads[zoom=16][kind=highway][render=inline]
{
	line-width: 7.5;
}

#z15plus-roads[zoom=16][kind=highway][render=casing]
{
	line-width: 13;
}

#z15plus-roads[zoom=16][is_link=yes][render=inline]
{
	line-width: 4;
}

#z15plus-roads[zoom=16][is_link=yes][render=casing]
{
	line-width: 8;
}

#z15plus-roads[zoom=16][kind=major_road][render=inline]
{
	line-width: 7;
}

#z15plus-roads[zoom=16][kind=major_road][is_link=no][render=casing]
{
	line-width: 10;
}

#z15plus-roads[zoom=16][kind=major_road][is_link=yes][render=inline]
{
	line-width: 4;
}

#z15plus-roads[zoom=16][kind=major_road][is_link=yes][render=casing]
{
	line-width: 6;
}

#z15plus-roads[zoom=16][kind=minor_road][render=inline]
{
	line-width: 4;
}

#z15plus-roads[zoom=16][kind=minor_road][render=casing]
{
	line-width: 6.5;
}

#z15plus-roads[zoom=16][highway=service][render=inline]
{
	line-width: 2.5;
}

#z15plus-roads[zoom=16][highway=service][render=casing]
{
	line-width: 4;
}

#z15plus-roads[zoom=16][kind=rail][render=inline]
{
	line-width: 1;
}

#z15plus-roads[zoom=16][kind=rail][render=casing]
{
	line-width: 5;
	line-dasharray: 1,4;
	line-cap: butt;
}

#z15plus-roads[zoom=16][kind=path][render=inline]
{
	line-width: 1;
	line-dasharray: 2,3;
	line-cap: butt;
}

/*//////// Zoom Level 17 */

#z15plus-roads[zoom=17][kind=highway][render=inline]
{
	line-width: 15;
}

#z15plus-roads[zoom=17][kind=highway][render=casing]
{
	line-width: 24;
}

#z15plus-roads[zoom=17][kind=highway][is_link=yes][render=inline]
{
	line-width: 7;
}

#z15plus-roads[zoom=17][kind=highway][is_link=yes][render=casing]
{
	line-width: 14;
}

#z15plus-roads[zoom=17][kind=major_road][render=inline]
{
	line-width: 14;
}

#z15plus-roads[zoom=17][kind=major_road][render=casing]
{
	line-width: 20;
}

#z15plus-roads[zoom=17][kind=major_road][is_link=yes][render=inline]
{
	line-width: 7;
}

#z15plus-roads[zoom=17][kind=major_road][is_link=yes][render=casing]
{
	line-width: 14;
}

#z15plus-roads[zoom=17][kind=minor_road][render=inline]
{
	line-width: 8;
}

#z15plus-roads[zoom=17][kind=minor_road][render=casing]
{
	line-width: 11.5;
}

#z15plus-roads[zoom=17][highway=service][render=inline]
{
	line-width: 5;
}

#z15plus-roads[zoom=17][highway=service][render=casing]
{
	line-width: 8;
}

#z15plus-roads[zoom=17][kind=rail][render=inline]
{
	line-width: 1;
}

#z15plus-roads[zoom=17][kind=rail][render=casing]
{
	line-width: 5;
	line-dasharray: 1,4;
	line-cap: butt;
}

#z15plus-roads[zoom=17][kind=path][render=inline]
{
	line-width: 2; 
	line-dasharray: 4,6;
	line-cap: butt;
}
	
	
/*//////// Zoom Level 18+ */

#z15plus-roads[zoom>=18][kind=highway][render=inline]
{
	line-width: 28;
}

#z15plus-roads[zoom>=18][kind=highway][render=casing]
{
	line-width: 39;
}

#z15plus-roads[zoom>=18][kind=highway][is_link=yes][render=inline]
{
	line-width: 10;
}

#z15plus-roads[zoom>=18][kind=highway][is_link=yes][render=casing]
{
	line-width: 19;
}

#z15plus-roads[zoom>=18][kind=major_road][render=inline]
{
	line-width: 17;
}

#z15plus-roads[zoom>=18][kind=major_road][render=casing]
{
	line-width: 25;
}

#z15plus-roads[zoom>=18][kind=major_road][is_link=yes][render=inline]
{
	line-width: 10;
}

#z15plus-roads[zoom>=18][kind=major_road][is_link=yes][render=casing]
{
	line-width: 19;
}

#z15plus-roads[zoom>=18][kind=minor_road][render=inline]
{
	line-width: 11;
}

#z15plus-roads[zoom>=18][kind=minor_road][render=casing]
{
	line-width: 14.5;
}

#z15plus-roads[zoom=18][kind=rail][render=inline]
{
	line-width: 2;
}

#z15plus-roads[zoom=18][kind=rail][render=casing]
{
	line-width: 7;
	line-dasharray: 2,6;
	line-cap: butt;
}

#z15plus-roads[zoom>=18][kind=path][render=inline]
{
	line-width: 2; 
	line-dasharray: 4,6;
	line-cap: butt;
}
	
	
/*//////// Labels! */

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

#skeletron-routes ref
{
    shield-spacing: 384;
    shield-face-name: 'PT Sans Narrow Bold';
    shield-fill: #fff;
    shield-size: 11;
}

#skeletron-routes[ref_len<=2] ref
{
    shield-size: 13;
}

#skeletron-routes[show_zoom=10][zoom=10][network="US:I"] ref,
#skeletron-routes[show_zoom=11][zoom=11][network="US:I"] ref,
#skeletron-routes[show_zoom=12][zoom=12][network="US:I"] ref,
#skeletron-routes[show_zoom=13][zoom=13][network="US:I"] ref,
#skeletron-routes[show_zoom=14][zoom=14][network="US:I"] ref,
#skeletron-routes[show_zoom=15][zoom>=15][network="US:I"] ref
{
    shield-file: url('shields/US-I-25.png');
}

#skeletron-routes[show_zoom=10][zoom=10][network="US:US"] ref,
#skeletron-routes[show_zoom=11][zoom=11][network="US:US"] ref,
#skeletron-routes[show_zoom=12][zoom=12][network="US:US"] ref,
#skeletron-routes[show_zoom=13][zoom=13][network="US:US"] ref,
#skeletron-routes[show_zoom=14][zoom=14][network="US:US"] ref,
#skeletron-routes[show_zoom=15][zoom>=15][network="US:US"] ref
{
    shield-file: url('shields/US-US-25.png');
    shield-fill: #000;
}

#skeletron-routes[show_zoom=10][zoom=10][network="US:CA"][highway=motorway] ref,
#skeletron-routes[show_zoom=12][zoom=12][network="US:CA"][highway!=motorway] ref
{
    shield-file: url('shields/US-CA-13.png');
    shield-size: 1;
}

#skeletron-routes[show_zoom=11][zoom=11][network="US:CA"][highway=motorway] ref,
#skeletron-routes[show_zoom=12][zoom=12][network="US:CA"][highway=motorway] ref,
#skeletron-routes[show_zoom=13][zoom=13][network="US:CA"] ref,
#skeletron-routes[show_zoom=14][zoom=14][network="US:CA"] ref,
#skeletron-routes[show_zoom=15][zoom>=15][network="US:CA"] ref
{
    shield-file: url('shields/US-CA-25.png');
}
