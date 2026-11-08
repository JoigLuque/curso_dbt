{% macro seconds_to_minutes(column_name, precision=2) -%}
round({{ column_name }} / 60, {{precision }})
{%- endmacro %}
-- uso en un modelo
--{{ seconds_to_minutes('o.order_total_cents') }}
-- compila a: round(o.order_total_cents / 100, 2)