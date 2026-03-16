with o as (
  select * from {{ ref('stg_orders') }}
),
 p as (
  select * from {{ ref('products') }}
)
select
  o.order_id,
  o.order_date,
  o.customer_id,
  o.product_id,
  o.quantity,
  (o.quantity * p.price) as revenue
from o
left join p using(product_id)
