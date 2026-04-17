
WITH tb1 AS (
    SELECT
        id,
        order_date,
        user_id
    FROM {{ source('datafeed_shared_schema', 'raw_orders') }}
)

SELECT * 
FROM tb1;