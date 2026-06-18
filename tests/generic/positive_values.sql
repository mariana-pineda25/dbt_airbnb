{% test positive_values(model, column_name) %}

select *
from {{ model }}
where {{ column_name }} <= 0
limit 10 -- if it returns any records it fails, if it returns 0 records it passes

{% endtest %}