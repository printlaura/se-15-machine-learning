-- query to get main category and product sub category 
select distinct 
ASIN,
MARKETPLACE,
REGION,
BRAND_NAME,
MAIN_CATEGORY,
SUB_CATEGORY
from DATAMARTS.BRAND_MGMT.ASIN_TRACKING_DETAILED_HISTORY
where 
BRAND_NAME in ('Espring','H&S','Tritart')

