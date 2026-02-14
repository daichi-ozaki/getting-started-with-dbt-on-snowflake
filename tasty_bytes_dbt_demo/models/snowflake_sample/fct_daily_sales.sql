with orders as (
    select * from {{ ref('tpch_sf1') }}
)

select
    order_date,
    count(order_id) AS order_count,
    sum(total_price) AS daily_revenue
from orders
group by 1