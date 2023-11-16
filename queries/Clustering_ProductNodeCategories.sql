-- query to get product node category 
select distinct 
ASIN,
REGION,
MARKETPLACE_NAME,
COUNTRY,
BRAND,
MIN_CATEGORY_LEAF_NAME
from DWH_PROD.CORE.DIM_AMAZON_LISTINGS
where 
BRAND in ('Espring','H&S','Tritart')

