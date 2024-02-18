{% macro calculate_subscription_bounds(date_column, flag_column, partition_columns) %}
    MIN(CASE WHEN {{ flag_column }} THEN {{ date_column }} END) OVER (PARTITION BY {{ partition_columns }}) AS first_subscription_month,
    MAX(CASE WHEN {{ flag_column }} THEN {{ date_column }} END) OVER (PARTITION BY {{ partition_columns }}) AS last_subscription_month
{% endmacro %}
