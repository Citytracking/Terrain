.political-boundaries
{
    outline-color: #44633a;
    outline-join: miter;
    outline-cap: butt;

    line-color: #000;
    line-join: miter;
    line-cap: butt;
}

#country-lines-10m
{
    outline-width: 2;
    outline-opacity: 0.2;

    line-width: 4;
    line-opacity: 0.2;
    line-dasharray: 12,4;
}

#country-lines-10m[zoom=7] { line-opacity: 0.25; }
#country-lines-10m[zoom=8] { line-opacity: 0.35; }
#country-lines-10m[zoom>=9] { line-opacity: 0.50; }

#state-lines-10m
{
    outline-width: 2;
    outline-opacity: 0.15;

    line-width: 3;
    line-opacity: 0.15;
    line-dasharray: 6,4;
}

#state-lines-10m[zoom=7] { line-opacity: 0.20; }
#state-lines-10m[zoom=8] { line-opacity: 0.25; }
#state-lines-10m[zoom>=9] { line-opacity: 0.40; }
