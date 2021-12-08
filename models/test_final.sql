{{config(
  materialize="table"
)

}}



orders as (
SELECT ID,
       USER_ID,
       ORDER_DATE
       
  
  FROM "ANALYTICS"."PUBLIC"."JAFFLE_SHOP_ORDERS"

),

final as (
       select a.id,
              a.first_name,
              a.last_name,
              count(distinct b.id) as total_orders
  
  from client as a 
  left join orders as b
  on a.id = b.user_id
  
  group by 1,2,3
  order by 4 desc

)

select * from final

