with source as (
    select * from {{ source('tpch_sample', 'ORDERS') }}
),

renamed as (
    select
        O_ORDERKEY AS order_id,
        O_CUSTKEY AS customer_id,
        O_ORDERDATE AS order_date,
        O_TOTALPRICE AS total_price
    from source
)

select * from renamed