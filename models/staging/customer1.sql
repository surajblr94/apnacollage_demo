{{ config(materialized='view') }}

WITH tb1 as(
    select
    id  as cust_id,
    first_name,
    last_name
    status
    from {{source('datafeed_shared_schema','raw_customerdata')}})
select * from tb1
