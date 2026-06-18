-- Jinja reference notes

-- Statements
-- {% set my_name = "Mariana" %}

-- Expressions
-- {{ my_name }}
-- {{ this }}
-- {{ target.name }}
-- {{ target.schema }}
-- {{ target.database }}
-- {{ log("This is a log message", info=True) }}
-- {{ var("my_variable") }}
-- {{ ref("my_model") }}
-- {{ source("my_source", "my_table") }}
-- {{ config(materialized='view') }}
-- {{ adapter.get_columns_in_relation(ref('dim_listings_cleansed')) }}

-- Custom building blocks
-- {% test positive_values(model, column_name) %}
-- {% docs my_docs %}
-- {% materialization my_materialization, default %}

-- IF / ELSE

-- select * from {{ ref('src_reviews') }} where review_text is not null
-- {% if is_incremental() %}
-- and review_date > (select max(review_date) from {{ this }})
-- {{ log('loading incrementally - new revs only', info=True) ) }}
-- {% else %}
-- {{ log('loading all revs', info=True)}}
-- {{% endif %}}

-- LOOPS
-- {% set columns = ['listings_id', 'listings_name', 'price'] %}
-- select
-- {% for column in columns %}
--    {{ column }}{% if not loop.last %},{% endif %}
-- {% endfor %}
-- from {{ ref('dim_listings_cleansed') }}

-- Whitespace control
-- {% statement %}: no whitespace control
-- {% statement -%}: trim whitespace to the left
-- {% statement -%}: trim whitespace to the right
-- {% -statement -%}: trim whitespace to the left and right