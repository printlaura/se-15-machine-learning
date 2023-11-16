-- query to get product prices (June to Aug 2023)
select distinct 
ASIN,
MARKETPLACE,
REGION,
BRAND_NAME,
DATE,
UNITS_SOLD_TOTAL,
ORGANIC_UNITS_SOLD,
SALE_PRICE_EUR
from DATAMARTS.BRAND_MGMT.ASIN_TRACKING_DETAILED_HISTORY
where 
BRAND_NAME in ('Espring','H&S','Tritart')
and date>='2023-06-01' and date<='2023-08-31'

