# Census Queries using Google BigQuery

Google has a number of public datasets in BigQuery including geographic boundries based on census data.
Currently I have only 1 query to find intersection of zip codes with congressional districts. Will add more queries as I write them.

## How to run?

Go to https://console.cloud.google.com/bigquery and click `Add Data` in the left-hand console

Once you add the public datasets, BigQuery should allow you to query them

## Queries

`zip_cd.sql` - Finds congressional district that intersects with a given zip code

### Notable fields in the query

`cd_geo_id` - The census has a `geo_id` for everything. You can find more information on that [here](https://www.census.gov/programs-surveys/geography/guidance/geo-identifiers.html). In the case of congressional districts it is a 4 digit number. The first 2 represent the state number which is the state's alphabetic position. For example, Texas is 48. The second 2 numbers represent the congressional district. So 4801 is the id for Texas's First Congressional district
`lsad_name` - Name of congressional district (i.e 8th Congressional District)
`lsad_code` - More details [here](https://www.census.gov/library/reference/code-lists/legal-status-codes.html)
`district_fips_code` - Number of the congresional district (Note: at-large districts are labeled `00`)
