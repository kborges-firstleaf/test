with client as (
SELECT ID,
       FIRST_NAME,
       LAST_NAME

FROM "ANALYTICS"."PUBLIC"."JAFFLE_SHOP_CUSTOMERS"
)
select * from client