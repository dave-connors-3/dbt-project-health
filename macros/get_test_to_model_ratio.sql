{% macro get_test_to_model_ratio() %}

    {% set model_count = get_enabled_models() | length %}
    {% set test_count = get_enabled_tests() | length %}

    {{ (test_count/model_count) | round(3) }}
    
{% endmacro %}