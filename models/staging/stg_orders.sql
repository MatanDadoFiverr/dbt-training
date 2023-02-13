select  o.orderid,
        o.orderdate,
        o.shipdate,
        o.shipmode,
        o.ordersellingprice - ordercostprice as orderprofit,
        ordercostprice,
        o.ordersellingprice,
        c.customerid,
        c.segment,
        c.country,
        p.category,
        p.productname,
        p.subcaregory
from {{ ref('raw_orders') }} o
left join {{ ref('raw_customer') }} c on o.customerid = c.customerid
left join {{ ref('raw_product') }} p on o.productid = p.productid