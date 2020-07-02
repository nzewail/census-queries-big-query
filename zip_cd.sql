select 
  cd.geo_id as cd_geo_id,
  cd.lsad_name ,
  cd.lsad_code ,
  cd.district_fips_code ,
  cd.int_point_lat ,
  cd.int_point_lon ,
  cd.district_geom ,
  zip.zip_code ,
  zip.city ,
  zip.county ,
  zip.state_code ,
  zip.state_name ,
  zip.zip_code_geom
from `bigquery-public-data.geo_us_boundaries.congress_district_116` cd
join `bigquery-public-data.geo_us_boundaries.zip_codes` zip ON ST_INTERSECTS(zip.internal_point_geom, cd.district_geom)
;
