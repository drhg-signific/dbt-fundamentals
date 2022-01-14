with

payments as (
    select * from {{ ref('stg_payments')}}
)

select
    order_id,
    SUM(amount) as totalt_amount
from
    payments
group by order_id
having totalt_amount > 0