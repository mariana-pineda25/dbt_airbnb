{% macro learn_logging() %}
    
    {{ log("Call your macro!", info=True) }} {# Logs to the screen, too #}
--  {{ log("Call your macro!", info=True) }} {# This will be logged to the screen #}
    {# log("Call your macro!", info=True) #} {# This won't be executed #}

{% endmacro %}