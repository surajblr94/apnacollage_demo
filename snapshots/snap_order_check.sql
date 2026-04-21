{% snapshot snap_orders_check %}

{{
config(
target_schema='snapshot',
strategy='check',
unique_key='id',
check_cols=['user_id','order_date']
)
}}
select * from {{ source('datafeed_shared_schema', 'raw_customo') }}

{% endsnapshot %}