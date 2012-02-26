-- skeletron_roads
-- 
--  gid        | integer               | not null default nextval('skeletron_roads_gid_seq'::regclass)
--  zoomlevel  | bigint                | 
--  name       | character varying(80) | 
--  pixel_widt | numeric               | 
--  the_geom   | geometry              | 
--  source     | character varying(16) | 
-- 
-- skeletron_routes
-- 
--  gid        | integer               | not null default nextval('skeletron_routes_gid_seq'::regclass)
--  ref        | character varying(80) | 
--  network    | character varying(80) | 
--  highway    | character varying(80) | 
--  the_geom   | geometry              | 
--  source     | character varying(16) | 
--  zoomlevel  | integer               | 

DROP VIEW IF EXISTS skeletron_routes_cleanrefs;

DELETE FROM geometry_columns
WHERE f_table_name = 'skeletron_routes_cleanrefs';



CREATE VIEW skeletron_routes_cleanrefs AS
  SELECT network,

         (CASE WHEN (network = 'US:I' AND ref ~* E'^(I +)?(\\d+\\w+)( +.+)?$')
               THEN regexp_replace(ref, E'^(I +)?(\\d+\\w+)( +.+)?$', E'\\2', 'i')

               WHEN (network = 'US:US' AND ref ~* E'^(US +)?(\\d+\\w+)( +.+)?$')
               THEN regexp_replace(ref, E'^(US +)?(\\d+\\w+)( +.+)?$', E'\\2', 'i')

               WHEN (network = 'US:ID' AND ref ~* E'^ID +\\d\\w*$')
               THEN regexp_replace(ref, E'^ID +(\\d\\w*)$', E'\\1', 'i')

               WHEN (network = 'US:MN' AND ref ~* E'^MN +\\d\\w*$')
               THEN regexp_replace(ref, E'^MN +(\\d\\w*)$', E'\\1', 'i')

               WHEN (network = 'US:NY' AND ref ~* E'^NY(-| +)\\d\\w*$')
               THEN regexp_replace(ref, E'^NY(-| +)(\\d\\w*)$', E'\\1', 'i')

               WHEN (network = 'US:OR' AND ref ~* E'^OR +\\d\\w*$')
               THEN regexp_replace(ref, E'^OR +(\\d\\w*)$', E'\\1', 'i')

               WHEN (network = 'US:TX' AND ref ~* E'^TX +\\d\\w*$')
               THEN regexp_replace(ref, E'^TX +(\\d\\w*)$', E'\\1', 'i')

               WHEN (network = 'US:WA' AND ref ~* E'^SR +\\d\\w*$')
               THEN regexp_replace(ref, E'^SR +(\\d\\w*)$', E'\\1', 'i')

               WHEN ref ~* E'^\\d+ +(truck|alternate|spur|business|loop|connector|bypass)$'
               THEN regexp_replace(ref, E'^(\\d+) +(truck|alternate|spur|business|loop|connector|bypass)$', E'\\1', 'i')

               ELSE ref END) AS ref,

         (CASE WHEN network IN ('US:I', 'US:US')
               THEN 1 ELSE 0 END) AS is_national,

         (CASE WHEN network != 'US:US' AND network ~* E'^US:\\w{2}$'
               THEN 1 ELSE 0 END) AS is_state,

         (CASE WHEN network ~* E'^US:\\w{2}:CR$'
               THEN 1 ELSE 0 END) AS is_county,

         highway,
         source,
         zoomlevel,
         the_geom
  FROM skeletron_routes;

INSERT INTO geometry_columns
(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
VALUES
    ('', 'public', 'skeletron_routes_cleanrefs', 'the_geom', 2, 900913, 'LINESTRING');
