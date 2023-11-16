-- query to get product descriptions
select distinct 
ASIN1,
MARKETPLACE_NAME,
SELLER_NAME,
ITEM_DESCRIPTION
from DWH_PROD.DBT_STAGING.INT_BRIDGEX_AMAZON_ALL_LISTINGS
where 
SELLER_NAME in ('Espring','H&S','Tritart')