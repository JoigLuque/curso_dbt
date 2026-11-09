{% set columnas = ['EVENT_ID'] %}

select
    {{ dbt_utils.star(from=ref('slv_sql_server_dbo__events'), except= columnas)}}
from {{ ref('slv_sql_server_dbo__events') }}