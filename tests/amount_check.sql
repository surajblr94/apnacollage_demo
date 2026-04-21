select id, spent
from {{source('datafeed_shared_schema','raw_customo')}}
having (spent<0)