{% macro generate_date_spine(start_date, end_date) %}
    SELECT date_day
    FROM UNNEST(GENERATE_DATE_ARRAY(DATE '{{ start_date }}', DATE '{{ end_date }}')) AS date_day
{% endmacro %}
