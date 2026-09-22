{% macro fn1(X) %}
CASE WHEN TO_TIMESTAMP({{X}}) < CURRENT_DATE THEN 'Past'
ELSE 'Future' END
{% endmacro %}

{% macro SEASONS(X) %}
CASE WHEN MONTH(TO_TIMESTAMP({{X}})) IN ('3','4','5')
    THEN 'Spring'
    WHEN MONTH(TO_TIMESTAMP({{X}})) IN ('6','7','8')
    THEN 'Summar'
    WHEN MONTH(TO_TIMESTAMP({{X}})) IN ('9','10','11')
    THEN 'Autumn'
    ELSE 'Winter' END AS SEASONS
{% endmacro %}

{% macro DAYNAME(X) %}
CASE
    WHEN DAYNAME(TO_TIMESTAMP({{X}})) IN ('Sat','Sun')
    THEN 'WEEKEND'
    ELSE 'BusinessDay'
    END AS DAY_TYPE
{% endmacro %}


