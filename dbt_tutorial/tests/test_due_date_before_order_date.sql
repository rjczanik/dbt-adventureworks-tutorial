select duedate, orderdate, count(1) as occurences
from {{ ref('sales_order_header') }}
where duedate < orderdate
group by duedate, orderdate